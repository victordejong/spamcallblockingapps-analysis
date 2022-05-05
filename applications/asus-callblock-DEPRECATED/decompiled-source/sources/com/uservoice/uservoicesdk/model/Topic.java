package com.uservoice.uservoicesdk.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.j.a;
import com.uservoice.uservoicesdk.j.g;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/Topic.class */
public class Topic extends d implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    protected String f4733a;

    /* renamed from: b  reason: collision with root package name */
    public int f4734b;
    public static Topic c = new Topic() { // from class: com.uservoice.uservoicesdk.model.Topic.1
        {
            this.f4733a = e.a().f4630a.getString(d.f.y);
            this.e = -1;
        }
    };
    public static final Parcelable.Creator<Topic> CREATOR = new Parcelable.Creator<Topic>() { // from class: com.uservoice.uservoicesdk.model.Topic.3
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Topic createFromParcel(Parcel parcel) {
            return new Topic(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Topic[] newArray(int i) {
            return new Topic[i];
        }
    };

    public Topic() {
    }

    private Topic(Parcel parcel) {
        this.e = parcel.readInt();
        this.f4733a = parcel.readString();
        this.f4734b = parcel.readInt();
    }

    /* synthetic */ Topic(Parcel parcel, byte b2) {
        this(parcel);
    }

    public static void a(final a<List<Topic>> aVar) {
        a(a("/topics.json", new Object[0]), new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Topic.2
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                List<Topic> a2 = d.a(jSONObject, "topics", Topic.class);
                ArrayList arrayList = new ArrayList(a2.size());
                for (Topic topic : a2) {
                    if (topic.f4734b > 0) {
                        arrayList.add(topic);
                    }
                }
                aVar.a((a) arrayList);
            }
        });
    }

    public final String a() {
        return this.f4733a;
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.f4733a = a(jSONObject, ContactDetailCallogActivity.EXTRA_NAME);
        this.f4734b = jSONObject.getInt("article_count");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f4733a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.e);
        parcel.writeString(this.f4733a);
        parcel.writeInt(this.f4734b);
    }
}
