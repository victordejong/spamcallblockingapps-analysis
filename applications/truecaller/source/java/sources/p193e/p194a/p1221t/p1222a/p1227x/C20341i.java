package p193e.p194a.p1221t.p1222a.p1227x;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.android.truemoji.C2886R;
import com.truecaller.android.truemoji.keyboard.EmojiView;
import s1.z.c.l;
/* renamed from: e.a.t.a.x.i */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/x/i.class */
public final class C20341i extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final EmojiView f57178a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20341i(View view) {
        super(view);
        l.e(view, "itemView");
        View findViewById = view.findViewById(C2886R.C2888id.emojiImageView);
        l.d(findViewById, "itemView.findViewById(R.id.emojiImageView)");
        this.f57178a = (EmojiView) findViewById;
    }
}
