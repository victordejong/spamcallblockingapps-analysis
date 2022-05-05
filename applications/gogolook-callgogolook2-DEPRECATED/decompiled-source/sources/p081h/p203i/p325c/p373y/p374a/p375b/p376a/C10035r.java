package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import com.flurry.sdk.C3496r;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p271l.C8269o1;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p081h.p203i.p325c.p373y.p374a.p377c.C10045b;
/* renamed from: h.i.c.y.a.b.a.r */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/r.class */
public class C10035r {

    /* renamed from: a */
    public MappedByteBuffer f22704a;

    /* renamed from: b */
    public final Context f22705b;

    /* renamed from: c */
    public final C10045b f22706c;

    public C10035r(@NonNull Context context, @NonNull C10045b bVar) {
        this.f22705b = context;
        this.f22706c = bVar;
    }

    @NonNull
    @WorkerThread
    /* renamed from: a */
    public MappedByteBuffer m13559a() throws C10009a {
        C7021t.m21289a(this.f22705b, "Context can not be null");
        C7021t.m21289a(this.f22706c, "Model source can not be null");
        MappedByteBuffer mappedByteBuffer = this.f22704a;
        if (mappedByteBuffer != null) {
            return mappedByteBuffer;
        }
        if (this.f22706c.m13542b() != null) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f22706c.m13542b(), C3496r.f6031a);
                FileChannel channel = randomAccessFile.getChannel();
                this.f22704a = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                if (channel != null) {
                    channel.close();
                }
                randomAccessFile.close();
                return this.f22704a;
            } catch (IOException e) {
                String valueOf = String.valueOf(this.f22706c.m13542b());
                throw new C10009a(valueOf.length() != 0 ? "Can not open the local file: ".concat(valueOf) : new String("Can not open the local file: "), 14, e);
            }
        } else if (this.f22706c.m13543a() != null) {
            String a = this.f22706c.m13543a();
            try {
                AssetFileDescriptor openFd = this.f22705b.getAssets().openFd(a);
                FileInputStream fileInputStream = new FileInputStream(openFd.getFileDescriptor());
                try {
                    FileChannel channel2 = fileInputStream.getChannel();
                    this.f22704a = channel2.map(FileChannel.MapMode.READ_ONLY, openFd.getStartOffset(), openFd.getDeclaredLength());
                    if (channel2 != null) {
                        channel2.close();
                    }
                    fileInputStream.close();
                    if (openFd != null) {
                        openFd.close();
                    }
                    return this.f22704a;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        C8269o1.m18249a(th, th2);
                    }
                    throw th;
                }
            } catch (IOException e2) {
                StringBuilder sb = new StringBuilder(String.valueOf(a).length() + MatroskaExtractor.ID_PIXEL_HEIGHT);
                sb.append("Can not load the file from asset: ");
                sb.append(a);
                sb.append(". Please double check your asset file name and ensure it's not compressed. See documentation for details how to use aaptOptions to skip file compression");
                throw new C10009a(sb.toString(), 14, e2);
            }
        } else {
            throw new C10009a("Can not load the model. Either filePath or assetFilePath must be set for the model.", 14);
        }
    }
}
