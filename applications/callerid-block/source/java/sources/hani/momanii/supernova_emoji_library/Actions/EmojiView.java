package hani.momanii.supernova_emoji_library.Actions;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import hani.momanii.supernova_emoji_library.Helper.AbstractC3154c;
import hani.momanii.supernova_emoji_library.Helper.C3150a;
import hani.momanii.supernova_emoji_library.Helper.C3155d;
import hani.momanii.supernova_emoji_library.Helper.EmojiconRecentsManager;
import hani.momanii.supernova_emoji_library.emoji.C3159a;
import hani.momanii.supernova_emoji_library.emoji.C3160b;
import hani.momanii.supernova_emoji_library.emoji.C3161c;
import hani.momanii.supernova_emoji_library.emoji.C3162d;
import hani.momanii.supernova_emoji_library.emoji.C3163e;
import hani.momanii.supernova_emoji_library.emoji.C3164f;
import hani.momanii.supernova_emoji_library.emoji.C3165g;
import hani.momanii.supernova_emoji_library.emoji.Emojicon;
import java.util.Arrays;
import p113f.p114a.p115a.C3131a;
import p113f.p114a.p115a.C3132b;
import p113f.p114a.p115a.p116d.C3137b;
import p113f.p114a.p115a.p117e.AbstractC3138a;
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/EmojiView.class */
public class EmojiView extends FrameLayout implements ViewPager.AbstractC0529i, AbstractC3154c {

    /* renamed from: c */
    private ViewPager f12949c;

    /* renamed from: e */
    private View[] f12951e;

    /* renamed from: f */
    private EmojiconRecentsManager f12952f;

    /* renamed from: g */
    private C3150a.AbstractC3152b f12953g;

    /* renamed from: h */
    private AbstractC3138a f12954h;

    /* renamed from: b */
    private boolean f12948b = true;

    /* renamed from: d */
    private int f12950d = -1;

    /* renamed from: i */
    private C3150a.AbstractC3152b f12955i = new C3144c();

    /* renamed from: hani.momanii.supernova_emoji_library.Actions.EmojiView$a */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/EmojiView$a.class */
    public class View$OnClickListenerC3142a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f12956b;

        View$OnClickListenerC3142a(int i) {
            EmojiView.this = r4;
            this.f12956b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EmojiView.this.f12949c.setCurrentItem(this.f12956b);
        }
    }

    /* renamed from: hani.momanii.supernova_emoji_library.Actions.EmojiView$b */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/EmojiView$b.class */
    public class View$OnClickListenerC3143b implements View.OnClickListener {
        View$OnClickListenerC3143b() {
            EmojiView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (EmojiView.this.f12954h != null) {
                EmojiView.this.f12954h.onClick(view);
            }
        }
    }

    /* renamed from: hani.momanii.supernova_emoji_library.Actions.EmojiView$c */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/EmojiView$c.class */
    class C3144c implements C3150a.AbstractC3152b {
        C3144c() {
            EmojiView.this = r4;
        }

        @Override // hani.momanii.supernova_emoji_library.Helper.C3150a.AbstractC3152b
        /* renamed from: a */
        public void mo14a(Emojicon emojicon) {
            if (emojicon == null || EmojiView.this.f12953g == null) {
                return;
            }
            EmojiView.this.f12953g.mo14a(emojicon);
        }
    }

    public EmojiView(Context context) {
        super(context);
        m48h(context);
    }

    public EmojiView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m48h(context);
    }

    public EmojiView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m48h(context);
    }

    /* renamed from: h */
    private void m48h(Context context) {
        View inflate = FrameLayout.inflate(context, C3132b.emojicons, this);
        this.f12949c = (ViewPager) inflate.findViewById(C3131a.emojis_pager);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C3131a.emojis_tab);
        this.f12949c.setOnPageChangeListener(this);
        this.f12949c.setAdapter(new C3137b(Arrays.asList(new C3155d(context, null, null, this.f12955i, this.f12948b), new C3150a(context, C3163e.f13027a, this, this.f12955i, this.f12948b), new C3150a(context, C3162d.f13026a, this, this.f12955i, this.f12948b), new C3150a(context, C3161c.f13025a, this, this.f12955i, this.f12948b), new C3150a(context, C3164f.f13028a, this, this.f12955i, this.f12948b), new C3150a(context, C3159a.f13023a, this, this.f12955i, this.f12948b), new C3150a(context, C3160b.f13024a, this, this.f12955i, this.f12948b), new C3150a(context, C3165g.f13029a, this, this.f12955i, this.f12948b))));
        View[] viewArr = new View[8];
        this.f12951e = viewArr;
        viewArr[0] = inflate.findViewById(C3131a.emojis_tab_0_recents);
        this.f12951e[1] = inflate.findViewById(C3131a.emojis_tab_1_people);
        this.f12951e[2] = inflate.findViewById(C3131a.emojis_tab_2_nature);
        this.f12951e[3] = inflate.findViewById(C3131a.emojis_tab_3_food);
        this.f12951e[4] = inflate.findViewById(C3131a.emojis_tab_4_sport);
        this.f12951e[5] = inflate.findViewById(C3131a.emojis_tab_5_cars);
        this.f12951e[6] = inflate.findViewById(C3131a.emojis_tab_6_elec);
        this.f12951e[7] = inflate.findViewById(C3131a.emojis_tab_7_sym);
        int i = 0;
        while (true) {
            View[] viewArr2 = this.f12951e;
            if (i >= viewArr2.length) {
                break;
            }
            viewArr2[i].setOnClickListener(new View$OnClickListenerC3142a(i));
            i++;
        }
        this.f12949c.setBackgroundColor(Color.parseColor("#E6EBEF"));
        linearLayout.setBackgroundColor(Color.parseColor("#DCE1E2"));
        int i2 = 0;
        while (true) {
            View[] viewArr3 = this.f12951e;
            if (i2 >= viewArr3.length) {
                break;
            }
            ((ImageButton) viewArr3[i2]).setColorFilter(Color.parseColor("#495C66"));
            i2++;
        }
        int i3 = C3131a.emojis_backspace;
        ImageButton imageButton = (ImageButton) inflate.findViewById(i3);
        imageButton.setColorFilter(Color.parseColor("#495C66"));
        imageButton.setBackgroundColor(Color.parseColor("#E6EBEF"));
        inflate.findViewById(i3).setOnClickListener(new View$OnClickListenerC3143b());
        EmojiconRecentsManager emojiconRecentsManager = EmojiconRecentsManager.getInstance(inflate.getContext());
        this.f12952f = emojiconRecentsManager;
        int recentPage = emojiconRecentsManager.getRecentPage();
        if (recentPage == 0 && this.f12952f.size() == 0) {
            recentPage = 1;
        }
        if (recentPage == 0) {
            mo52c(recentPage);
        } else {
            this.f12949c.setCurrentItem(recentPage, false);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0529i
    /* renamed from: a */
    public void mo54a(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0529i
    /* renamed from: b */
    public void mo53b(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0529i
    /* renamed from: c */
    public void mo52c(int i) {
        int i2 = this.f12950d;
        if (i2 == i) {
            return;
        }
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                if (i2 >= 0) {
                    View[] viewArr = this.f12951e;
                    if (i2 < viewArr.length) {
                        viewArr[i2].setSelected(false);
                    }
                }
                this.f12951e[i].setSelected(true);
                this.f12950d = i;
                this.f12952f.setRecentPage(i);
                return;
            default:
                return;
        }
    }

    @Override // hani.momanii.supernova_emoji_library.Helper.AbstractC3154c
    /* renamed from: d */
    public void mo15d(Context context, Emojicon emojicon) {
        C3137b c3137b = (C3137b) this.f12949c.getAdapter();
        if (c3137b != null) {
            c3137b.m63u().mo15d(context, emojicon);
        }
    }

    public void setOnEmojiKeyboardDelete(AbstractC3138a abstractC3138a) {
        this.f12954h = abstractC3138a;
    }

    public void setOnEmojiconClickedListener(C3150a.AbstractC3152b abstractC3152b) {
        this.f12953g = abstractC3152b;
    }
}
