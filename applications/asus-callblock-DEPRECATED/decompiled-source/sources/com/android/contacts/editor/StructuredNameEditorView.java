package com.android.contacts.editor;

import android.content.ContentValues;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.a;
import com.android.contacts.model.a.b;
import com.android.contacts.model.a.o;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.NameConverter;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/StructuredNameEditorView.class */
public class StructuredNameEditorView extends TextFieldsEditorView {
    private o j;
    private boolean k;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/StructuredNameEditorView$SavedState.class */
    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.contacts.editor.StructuredNameEditorView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public boolean f1181a;

        /* renamed from: b  reason: collision with root package name */
        public ContentValues f1182b;
        public Parcelable c;

        private SavedState(Parcel parcel) {
            ClassLoader classLoader = getClass().getClassLoader();
            this.c = parcel.readParcelable(classLoader);
            this.f1181a = parcel.readInt() != 0;
            this.f1182b = (ContentValues) parcel.readParcelable(classLoader);
        }

        /* synthetic */ SavedState(Parcel parcel, byte b2) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            this.c = parcelable;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.c, 0);
            parcel.writeInt(this.f1181a ? 1 : 0);
            parcel.writeParcelable(this.f1182b, 0);
        }
    }

    public StructuredNameEditorView(Context context) {
        super(context);
    }

    public StructuredNameEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public StructuredNameEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private static Map<String, String> a(RawContactDelta.ValuesDelta valuesDelta) {
        String[] strArr;
        HashMap hashMap = new HashMap();
        for (String str : NameConverter.STRUCTURED_NAME_FIELDS) {
            hashMap.put(str, valuesDelta.a(str));
        }
        return hashMap;
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    public final void a(String str, String str2) {
        if (c(str, str2)) {
            b(str, str2);
            this.k = true;
            if (((TextFieldsEditorView) this).i) {
                if (g()) {
                    RawContactDelta.ValuesDelta valuesDelta = this.f1157b;
                    valuesDelta.h(NameConverter.structuredNameToDisplayName(getContext(), a(valuesDelta)));
                } else {
                    RawContactDelta.ValuesDelta valuesDelta2 = this.f1157b;
                    Map<String, String> displayNameToStructuredName = NameConverter.displayNameToStructuredName(getContext(), valuesDelta2.a(CoverUtils.CoverData.COVER_URI));
                    for (String str3 : displayNameToStructuredName.keySet()) {
                        valuesDelta2.a(str3, displayNameToStructuredName.get(str3));
                    }
                }
            }
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.editor.LabeledEditorView
    public final void i() {
        String[] strArr;
        if (((TextFieldsEditorView) this).i) {
            if (g()) {
                RawContactDelta.ValuesDelta valuesDelta = this.f1157b;
                if (!this.k) {
                    for (String str : NameConverter.STRUCTURED_NAME_FIELDS) {
                        valuesDelta.a(str, this.j.f1994a.getAsString(str));
                    }
                } else {
                    String a2 = valuesDelta.a(CoverUtils.CoverData.COVER_URI);
                    Map<String, String> displayNameToStructuredName = NameConverter.displayNameToStructuredName(getContext(), a2);
                    if (!displayNameToStructuredName.isEmpty()) {
                        for (String str2 : displayNameToStructuredName.keySet()) {
                            valuesDelta.a(str2, displayNameToStructuredName.get(str2));
                        }
                    }
                    this.j.f1994a.clear();
                    this.j.f1994a.putAll(valuesDelta.p());
                    this.j.a(a2);
                }
            } else {
                RawContactDelta.ValuesDelta valuesDelta2 = this.f1157b;
                if (!this.k) {
                    valuesDelta2.h(this.j.k());
                } else {
                    Map<String, String> a3 = a(valuesDelta2);
                    String structuredNameToDisplayName = NameConverter.structuredNameToDisplayName(getContext(), a3);
                    if (!TextUtils.isEmpty(structuredNameToDisplayName)) {
                        for (String str3 : NameConverter.STRUCTURED_NAME_FIELDS) {
                            valuesDelta2.g(str3);
                        }
                        valuesDelta2.a(CoverUtils.CoverData.COVER_URI, structuredNameToDisplayName);
                    }
                    this.j.f1994a.clear();
                    this.j.a(valuesDelta2.a(CoverUtils.CoverData.COVER_URI));
                    for (String str4 : a3.keySet()) {
                        this.j.f1994a.put(str4, a3.get(str4));
                    }
                }
            }
        }
        super.i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.editor.TextFieldsEditorView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.c);
        this.k = savedState.f1181a;
        a a2 = a.a(null, savedState.f1182b);
        if (a2 instanceof o) {
            this.j = (o) a2;
        } else {
            Log.e("StructuredNameEditorView", "is not a StructuredNameDataItem");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.editor.TextFieldsEditorView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1181a = this.k;
        savedState.f1182b = this.j.f1994a;
        return savedState;
    }

    @Override // com.android.contacts.editor.TextFieldsEditorView, com.android.contacts.editor.LabeledEditorView, com.android.contacts.editor.d
    public void setValues(b bVar, RawContactDelta.ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        super.setValues(bVar, valuesDelta, rawContactDelta, z, viewIdGenerator);
        if (this.j == null) {
            this.j = (o) a.a(null, new ContentValues(this.f1157b.p()));
            this.k = valuesDelta.n();
            return;
        }
        this.k = false;
    }
}
