package com.p456lb.video_trimmer_library.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import com.explorestack.iab.mraid.C9568h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.p456lb.video_trimmer_library.p458b.C16596a;
import com.p456lb.video_trimmer_library.p458b.C16601d;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018��2\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0015J(\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0014J$\u0010\u001d\u001a\u00020\u00122\u001a\u0010\u001e\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nj\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b`\fH\u0002J\u000e\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0010R(\u0010\t\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nj\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b`\fX\u0082\u0004¢\u0006\b\n��\u0012\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��¨\u0006!"}, m4298d2 = {"Lcom/lb/video_trimmer_library/view/TimeLineView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "bitmapList", "Ljava/util/ArrayList;", "Landroid/graphics/Bitmap;", "Lkotlin/collections/ArrayList;", "bitmapList$annotations", "()V", "videoUri", "Landroid/net/Uri;", "getBitmap", "", "viewWidth", "viewHeight", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onSizeChanged", "w", C9568h.f32519a, "oldW", "oldH", "returnBitmaps", "thumbnailList", "setVideo", "data", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
/* renamed from: com.lb.video_trimmer_library.view.TimeLineView */
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/TimeLineView.class */
public class TimeLineView extends View {

    /* renamed from: a */
    private Uri f58441a;

    /* renamed from: b */
    private final ArrayList<Bitmap> f58442b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m4298d2 = {"com/lb/video_trimmer_library/view/TimeLineView$getBitmap$1", "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;", "execute", "", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.view.TimeLineView$a */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/TimeLineView$a.class */
    public static final class C16606a extends C16596a.AbstractRunnableC16597a {

        /* renamed from: h */
        final /* synthetic */ int f58444h;

        /* renamed from: i */
        final /* synthetic */ int f58445i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C16606a(int i, int i2, String str, long j, String str2) {
            super(str, j, str2);
            TimeLineView.this = r7;
            this.f58444h = i;
            this.f58445i = i2;
        }

        @Override // com.p456lb.video_trimmer_library.p458b.C16596a.AbstractRunnableC16597a
        /* renamed from: a */
        public final void mo6911a() {
            Bitmap bitmap;
            try {
                ArrayList arrayList = new ArrayList();
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(TimeLineView.this.getContext(), TimeLineView.this.f58441a);
                String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
                C18524p.m3849a((Object) extractMetadata, "mediaMetadataRetriever.e…er.METADATA_KEY_DURATION)");
                long parseLong = Long.parseLong(extractMetadata);
                int i = this.f58444h;
                long j = (parseLong * 1000) / i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (Build.VERSION.SDK_INT >= 27) {
                        long j2 = i2;
                        int i3 = this.f58445i;
                        bitmap = mediaMetadataRetriever.getScaledFrameAtTime(j2 * j, 2, i3, i3);
                    } else {
                        bitmap = mediaMetadataRetriever.getFrameAtTime(i2 * j, 2);
                    }
                    Bitmap bitmap2 = bitmap;
                    if (bitmap != null) {
                        int i4 = this.f58445i;
                        bitmap2 = ThumbnailUtils.extractThumbnail(bitmap, i4, i4);
                    }
                    arrayList.add(bitmap2);
                }
                mediaMetadataRetriever.release();
                TimeLineView.m6913a(TimeLineView.this, arrayList);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.view.TimeLineView$b */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/TimeLineView$b.class */
    public static final class RunnableC16607b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ ArrayList f58447b;

        RunnableC16607b(ArrayList arrayList) {
            TimeLineView.this = r4;
            this.f58447b = arrayList;
        }

        @Override // java.lang.Runnable
        public final void run() {
            TimeLineView.this.f58442b.clear();
            TimeLineView.this.f58442b.addAll(this.f58447b);
            TimeLineView.this.invalidate();
        }
    }

    public TimeLineView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimeLineView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C18524p.m3841c(context, "context");
        this.f58442b = new ArrayList<>();
    }

    public /* synthetic */ TimeLineView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m6913a(TimeLineView timeLineView, ArrayList arrayList) {
        C16601d c16601d = C16601d.f58419b;
        RunnableC16607b task = new RunnableC16607b(arrayList);
        C18524p.m3841c("", "id");
        C18524p.m3841c(task, "task");
        if (C18524p.m3850a((Object) "", (Object) "")) {
            C16601d.f58418a.postDelayed(task, 0L);
            return;
        }
        C16601d.f58418a.postAtTime(task, C16601d.m6920a(""), SystemClock.uptimeMillis() + 0);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        C18524p.m3841c(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        int height = getHeight();
        Iterator<Bitmap> it2 = this.f58442b.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                Bitmap next = it2.next();
                if (next != null) {
                    canvas.drawBitmap(next, i2, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                }
                i = i2 + height;
            } else {
                return;
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int ceil = (int) Math.ceil(i / i2);
            this.f58442b.clear();
            if (!isInEditMode()) {
                C16596a.f58401a.m6931a("");
                C16596a.f58401a.m6932a(new C16606a(ceil, i2, "", 0L, ""));
                return;
            }
            Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), 17301651);
            if (decodeResource == null) {
                C18524p.m3855a();
            }
            Bitmap extractThumbnail = ThumbnailUtils.extractThumbnail(decodeResource, i2, i2);
            for (int i5 = 0; i5 < ceil; i5++) {
                this.f58442b.add(extractThumbnail);
            }
        }
    }

    public final void setVideo(Uri data) {
        C18524p.m3841c(data, "data");
        this.f58441a = data;
    }
}
