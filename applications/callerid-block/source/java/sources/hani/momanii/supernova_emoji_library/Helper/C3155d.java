package hani.momanii.supernova_emoji_library.Helper;

import android.content.Context;
import android.widget.GridView;
import android.widget.ListAdapter;
import hani.momanii.supernova_emoji_library.Helper.C3150a;
import hani.momanii.supernova_emoji_library.emoji.Emojicon;
import p113f.p114a.p115a.C3131a;
import p113f.p114a.p115a.p116d.C3134a;
/* renamed from: hani.momanii.supernova_emoji_library.Helper.d */
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/d.class */
public class C3155d extends C3150a implements AbstractC3154c {

    /* renamed from: f */
    private C3134a f13008f;

    /* renamed from: g */
    private boolean f13009g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: hani.momanii.supernova_emoji_library.Helper.d$a */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/d$a.class */
    public class C3156a implements C3150a.AbstractC3152b {
        C3156a() {
            C3155d.this = r4;
        }

        @Override // hani.momanii.supernova_emoji_library.Helper.C3150a.AbstractC3152b
        /* renamed from: a */
        public void mo14a(Emojicon emojicon) {
            C3150a.AbstractC3152b abstractC3152b = C3155d.this.f13002e;
            if (abstractC3152b != null) {
                abstractC3152b.mo14a(emojicon);
            }
        }
    }

    public C3155d(Context context, Emojicon[] emojiconArr, AbstractC3154c abstractC3154c, C3150a.AbstractC3152b abstractC3152b, boolean z) {
        super(context, emojiconArr, abstractC3154c, abstractC3152b, z);
        this.f13009g = false;
        this.f13009g = z;
        C3134a c3134a = new C3134a(this.f12999b.getContext(), EmojiconRecentsManager.getInstance(this.f12999b.getContext()), this.f13009g);
        this.f13008f = c3134a;
        c3134a.m68a(new C3156a());
        ((GridView) this.f12999b.findViewById(C3131a.Emoji_GridView)).setAdapter((ListAdapter) this.f13008f);
        C3134a c3134a2 = this.f13008f;
        if (c3134a2 != null) {
            c3134a2.notifyDataSetChanged();
        }
    }

    @Override // hani.momanii.supernova_emoji_library.Helper.AbstractC3154c
    /* renamed from: d */
    public void mo15d(Context context, Emojicon emojicon) {
        EmojiconRecentsManager.getInstance(context).push(emojicon);
        C3134a c3134a = this.f13008f;
        if (c3134a != null) {
            c3134a.notifyDataSetChanged();
        }
    }
}
