package com.android.contacts.editor;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.android.contacts.editor.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/AggregationSuggestionView.class */
public class AggregationSuggestionView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    a f1090a;

    /* renamed from: b  reason: collision with root package name */
    long f1091b;
    String c;
    List<a.c> d = new ArrayList();
    boolean e;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/AggregationSuggestionView$a.class */
    public interface a {
        void a(Uri uri);

        void a(List<Long> list);
    }

    public AggregationSuggestionView(Context context) {
        super(context);
    }

    public AggregationSuggestionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AggregationSuggestionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setListener(a aVar) {
        this.f1090a = aVar;
    }

    public void setNewContact(boolean z) {
        this.e = z;
    }
}
