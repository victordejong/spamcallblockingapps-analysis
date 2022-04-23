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

    /* renamed from: hani.momanii.supernova_emoji_library.Helper.d$a */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/d$a.class */
    class C3156a implements C3150a.AbstractC3152b {
        C3156a() {
        }

        @Override // hani.momanii.supernova_emoji_library.Helper.C3150a.AbstractC3152b
        /* renamed from: a */
        public void mo14a(Emojicon emojicon) {
            C3150a.AbstractC3152b bVar = C3155d.this.f13002e;
            if (bVar != null) {
                bVar.mo14a(emojicon);
            }
        }
    }

    public C3155d(Context context, Emojicon[] emojiconArr, AbstractC3154c cVar, C3150a.AbstractC3152b bVar, boolean z) {
        super(context, emojiconArr, cVar, bVar, z);
        this.f13009g = false;
        this.f13009g = z;
        C3134a aVar = new C3134a(this.f12999b.getContext(), EmojiconRecentsManager.getInstance(this.f12999b.getContext()), this.f13009g);
        this.f13008f = aVar;
        aVar.m68a(new C3156a());
        ((GridView) this.f12999b.findViewById(C3131a.Emoji_GridView)).setAdapter((ListAdapter) this.f13008f);
        C3134a aVar2 = this.f13008f;
        if (aVar2 != null) {
            aVar2.notifyDataSetChanged();
        }
    }

    @Override // hani.momanii.supernova_emoji_library.Helper.AbstractC3154c
    /* renamed from: d */
    public void mo15d(Context context, Emojicon emojicon) {
        EmojiconRecentsManager.getInstance(context).push(emojicon);
        C3134a aVar = this.f13008f;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }
}
