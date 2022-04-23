package hani.momanii.supernova_emoji_library.Helper;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import hani.momanii.supernova_emoji_library.emoji.C3163e;
import hani.momanii.supernova_emoji_library.emoji.Emojicon;
import java.util.Arrays;
import p113f.p114a.p115a.C3131a;
import p113f.p114a.p115a.C3132b;
import p113f.p114a.p115a.p116d.C3134a;
/* renamed from: hani.momanii.supernova_emoji_library.Helper.a */
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/a.class */
public class C3150a {

    /* renamed from: b */
    public View f12999b;

    /* renamed from: c */
    private AbstractC3154c f13000c;

    /* renamed from: d */
    private Emojicon[] f13001d;

    /* renamed from: e */
    protected AbstractC3152b f13002e;

    /* renamed from: hani.momanii.supernova_emoji_library.Helper.a$a */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/a$a.class */
    class C3151a implements AbstractC3152b {
        C3151a() {
        }

        @Override // hani.momanii.supernova_emoji_library.Helper.C3150a.AbstractC3152b
        /* renamed from: a */
        public void mo14a(Emojicon emojicon) {
            if (C3150a.this.f13000c != null) {
                C3150a.this.f13000c.mo15d(C3150a.this.f12999b.getContext(), emojicon);
            }
            AbstractC3152b bVar = C3150a.this.f13002e;
            if (bVar != null) {
                bVar.mo14a(emojicon);
            }
        }
    }

    /* renamed from: hani.momanii.supernova_emoji_library.Helper.a$b */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/a$b.class */
    public interface AbstractC3152b {
        /* renamed from: a */
        void mo14a(Emojicon emojicon);
    }

    public C3150a(Context context, Emojicon[] emojiconArr, AbstractC3154c cVar, AbstractC3152b bVar, boolean z) {
        this.f12999b = LayoutInflater.from(context).inflate(C3132b.emojicon_grid, (ViewGroup) null);
        this.f13002e = bVar;
        m21b(cVar);
        GridView gridView = (GridView) this.f12999b.findViewById(C3131a.Emoji_GridView);
        if (emojiconArr == null) {
            this.f13001d = C3163e.f13027a;
        } else {
            this.f13001d = (Emojicon[]) Arrays.asList(emojiconArr).toArray(new Emojicon[emojiconArr.length]);
        }
        C3134a aVar = new C3134a(this.f12999b.getContext(), this.f13001d, z);
        aVar.m68a(new C3151a());
        gridView.setAdapter((ListAdapter) aVar);
    }

    /* renamed from: b */
    private void m21b(AbstractC3154c cVar) {
        this.f13000c = cVar;
    }
}
