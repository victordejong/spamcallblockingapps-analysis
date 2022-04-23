package p113f.p114a.p115a.p116d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import hani.momanii.supernova_emoji_library.Helper.C3150a;
import hani.momanii.supernova_emoji_library.Helper.EmojiconTextView;
import hani.momanii.supernova_emoji_library.emoji.Emojicon;
import java.util.List;
import p113f.p114a.p115a.C3131a;
import p113f.p114a.p115a.C3132b;
/* renamed from: f.a.a.d.a */
/* loaded from: classes2-dex2jar.jar:f/a/a/d/a.class */
public class C3134a extends ArrayAdapter<Emojicon> {

    /* renamed from: b */
    private boolean f12937b;

    /* renamed from: c */
    C3150a.AbstractC3152b f12938c;

    /* renamed from: f.a.a.d.a$a */
    /* loaded from: classes2-dex2jar.jar:f/a/a/d/a$a.class */
    class View$OnClickListenerC3135a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f12939b;

        View$OnClickListenerC3135a(int i) {
            this.f12939b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3134a aVar = C3134a.this;
            aVar.f12938c.mo14a(aVar.getItem(this.f12939b));
        }
    }

    /* renamed from: f.a.a.d.a$b */
    /* loaded from: classes2-dex2jar.jar:f/a/a/d/a$b.class */
    class C3136b {

        /* renamed from: a */
        EmojiconTextView f12941a;

        C3136b(C3134a aVar) {
        }
    }

    public C3134a(Context context, List<Emojicon> list, boolean z) {
        super(context, C3132b.emojicon_item, list);
        this.f12937b = false;
        this.f12937b = z;
    }

    public C3134a(Context context, Emojicon[] emojiconArr, boolean z) {
        super(context, C3132b.emojicon_item, emojiconArr);
        this.f12937b = false;
        this.f12937b = z;
    }

    /* renamed from: a */
    public void m68a(C3150a.AbstractC3152b bVar) {
        this.f12938c = bVar;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = View.inflate(getContext(), C3132b.emojicon_item, null);
            C3136b bVar = new C3136b(this);
            EmojiconTextView emojiconTextView = (EmojiconTextView) view2.findViewById(C3131a.emojicon_icon);
            bVar.f12941a = emojiconTextView;
            emojiconTextView.setUseSystemDefault(this.f12937b);
            view2.setTag(bVar);
        }
        Emojicon item = getItem(i);
        C3136b bVar2 = (C3136b) view2.getTag();
        bVar2.f12941a.setText(item.m9d());
        bVar2.f12941a.setOnClickListener(new View$OnClickListenerC3135a(i));
        return view2;
    }
}
