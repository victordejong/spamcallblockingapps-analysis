package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioManager;
import android.media.MediaPlayer;
import androidx.media2.exoplayer.external.util.MimeTypes;
import p459j.p460a.p474c0.p499h.AbstractC12165g0;
/* renamed from: j.a.c0.h.h0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/h0.class */
public class C12168h0 extends AbstractC12165g0 {

    /* renamed from: j.a.c0.h.h0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/h0$a.class */
    public class C12169a implements MediaPlayer.OnCompletionListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12165g0.AbstractC12166a f27311a;

        public C12169a(C12168h0 h0Var, AbstractC12165g0.AbstractC12166a aVar) {
            this.f27311a = aVar;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            AbstractC12165g0.AbstractC12166a aVar = this.f27311a;
            if (aVar != null) {
                aVar.mo6943a();
            }
            mediaPlayer.stop();
            mediaPlayer.release();
        }
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12165g0
    /* renamed from: a */
    public void mo6942a(Context context, int i, AbstractC12165g0.AbstractC12166a aVar) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setAudioStreamType(5);
            AssetFileDescriptor openRawResourceFd = context.getResources().openRawResourceFd(i);
            mediaPlayer.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
            openRawResourceFd.close();
            mediaPlayer.prepare();
            mediaPlayer.setOnCompletionListener(new C12169a(this, aVar));
            mediaPlayer.seekTo(0);
            mediaPlayer.start();
        } catch (Exception e) {
            C12153d0.m6982d("MediaUtilImpl", "Error playing sound id: " + i, e);
            if (aVar != null) {
                aVar.mo6943a();
            }
        }
    }
}
