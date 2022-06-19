package p193e.p1485h.p1486a.p1493c.p1502r0;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.clevertap.android.sdk.C0868R;
import com.clevertap.android.sdk.inbox.CTInboxMessage;
import com.clevertap.android.sdk.inbox.CTInboxMessageContent;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
/* renamed from: e.h.a.c.r0.e */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/e.class */
public class C22816e extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public Context f63290a;

    /* renamed from: b */
    public LinearLayout f63291b;

    /* renamed from: c */
    public LinearLayout f63292c;

    /* renamed from: d */
    public FrameLayout f63293d;

    /* renamed from: e */
    public ImageView f63294e;

    /* renamed from: f */
    public ImageView f63295f;

    /* renamed from: g */
    public RelativeLayout f63296g;

    /* renamed from: h */
    public FrameLayout f63297h;

    /* renamed from: i */
    public RelativeLayout f63298i;

    /* renamed from: j */
    public CTInboxMessageContent f63299j;

    /* renamed from: k */
    public CTInboxMessage f63300k;

    /* renamed from: l */
    public ImageView f63301l;

    /* renamed from: m */
    public WeakReference<i> f63302m;

    /* renamed from: n */
    public boolean f63303n;

    /* renamed from: e.h.a.c.r0.e$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/r0/e$a.class */
    public class View$OnClickListenerC22817a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ SimpleExoPlayer f63304a;

        public View$OnClickListenerC22817a(SimpleExoPlayer simpleExoPlayer) {
            C22816e.this = r4;
            this.f63304a = simpleExoPlayer;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimpleExoPlayer simpleExoPlayer = this.f63304a;
            int i = ((simpleExoPlayer != null ? simpleExoPlayer.getVolume() : 0.0f) > 0.0f ? 1 : ((simpleExoPlayer != null ? simpleExoPlayer.getVolume() : 0.0f) == 0.0f ? 0 : -1));
            if (i > 0) {
                this.f63304a.setVolume(0.0f);
                C22816e c22816e = C22816e.this;
                ImageView imageView = c22816e.f63301l;
                Resources resources = c22816e.f63290a.getResources();
                int i2 = C0868R.C0869drawable.ct_volume_off;
                ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
                imageView.setImageDrawable(resources.getDrawable(i2, null));
            } else if (i != 0) {
            } else {
                SimpleExoPlayer simpleExoPlayer2 = this.f63304a;
                if (simpleExoPlayer2 != null) {
                    simpleExoPlayer2.setVolume(1.0f);
                }
                C22816e c22816e2 = C22816e.this;
                ImageView imageView2 = c22816e2.f63301l;
                Resources resources2 = c22816e2.f63290a.getResources();
                int i3 = C0868R.C0869drawable.ct_volume_on;
                ThreadLocal<TypedValue> threadLocal2 = C26488h.f74265a;
                imageView2.setImageDrawable(resources2.getDrawable(i3, null));
            }
        }
    }

    public C22816e(View view) {
        super(view);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* renamed from: N4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m7746N4(com.google.android.exoplayer2.p070ui.PlayerView r8) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1502r0.C22816e.m7746N4(com.google.android.exoplayer2.ui.PlayerView):boolean");
    }

    /* renamed from: O4 */
    public String m7745O4(long j) {
        String str;
        StringBuilder sb;
        long currentTimeMillis = (System.currentTimeMillis() / 1000) - j;
        int i = (currentTimeMillis > 60L ? 1 : (currentTimeMillis == 60L ? 0 : -1));
        if (i < 0) {
            return "Just Now";
        }
        if (i > 0 && currentTimeMillis < 3540) {
            return (currentTimeMillis / 60) + " mins ago";
        } else if (currentTimeMillis <= 3540 || currentTimeMillis >= 81420) {
            return (currentTimeMillis <= 86400 || currentTimeMillis >= 172800) ? new SimpleDateFormat("dd MMM").format(new Date(j * 1000)) : "Yesterday";
        } else {
            long j2 = currentTimeMillis / 3600;
            if (j2 > 1) {
                sb = new StringBuilder();
                sb.append(j2);
                str = " hours ago";
            } else {
                sb = new StringBuilder();
                sb.append(j2);
                str = " hour ago";
            }
            sb.append(str);
            return sb.toString();
        }
    }

    /* renamed from: P4 */
    public void m7744P4(CTInboxMessage cTInboxMessage, i iVar, int i) {
        this.f63290a = iVar.getContext();
        this.f63302m = new WeakReference<>(iVar);
        this.f63300k = cTInboxMessage;
        boolean z = false;
        CTInboxMessageContent cTInboxMessageContent = cTInboxMessage.f2380j.get(0);
        this.f63299j = cTInboxMessageContent;
        if (cTInboxMessageContent.m42052f() || this.f63299j.m42049i()) {
            z = true;
        }
        this.f63303n = z;
    }

    /* renamed from: Q4 */
    public i m7743Q4() {
        return this.f63302m.get();
    }

    /* renamed from: R4 */
    public void m7742R4(Button button, Button button2, Button button3) {
        button3.setVisibility(8);
        button.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 3.0f));
        button2.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 3.0f));
        button3.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 0.0f));
    }

    /* renamed from: S4 */
    public void m7741S4(Button button, Button button2, Button button3) {
        button2.setVisibility(8);
        button3.setVisibility(8);
        button.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 6.0f));
        button2.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 0.0f));
        button3.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 0.0f));
    }

    /* renamed from: T4 */
    public void m7740T4(ImageView[] imageViewArr, int i, Context context, LinearLayout linearLayout) {
        for (int i2 = 0; i2 < i; i2++) {
            imageViewArr[i2] = new ImageView(context);
            imageViewArr[i2].setVisibility(0);
            ImageView imageView = imageViewArr[i2];
            Resources resources = context.getResources();
            int i3 = C0868R.C0869drawable.ct_unselected_dot;
            ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
            imageView.setImageDrawable(resources.getDrawable(i3, null));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(8, 6, 4, 6);
            layoutParams.gravity = 17;
            if (linearLayout.getChildCount() < i) {
                linearLayout.addView(imageViewArr[i2], layoutParams);
            }
        }
    }
}
