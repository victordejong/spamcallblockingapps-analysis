package com.freshchat.consumer.sdk.p049c;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.freshchat.consumer.sdk.beans.Tag;
import com.freshchat.consumer.sdk.p049c.p050a.C1500l;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/j.class */
public class C1514j extends AbstractC1504b {
    private Context context;

    public C1514j(Context context) {
        super(context);
        this.context = context.getApplicationContext();
    }

    /* renamed from: a */
    public static String m40678a(int i, Tag.TaggedType... taggedTypeArr) {
        if (i == 0) {
            return null;
        }
        StringBuilder m8696K = C22128a.m8696K(AnalyticsConstants.NAME, " IN (");
        m8696K.append(C1626as.m40232a("?", ",", i));
        m8696K.append(")");
        if (taggedTypeArr != null && taggedTypeArr.length > 0) {
            C22128a.m8669S0(m8696K, " AND ", "tagged_type", " IN (");
            int length = taggedTypeArr.length;
            int i2 = 0;
            String str = "";
            while (true) {
                String str2 = str;
                if (i2 >= length) {
                    break;
                }
                Tag.TaggedType taggedType = taggedTypeArr[i2];
                m8696K.append(str2);
                m8696K.append("\"");
                m8696K.append(taggedType.asInt());
                m8696K.append("\"");
                i2++;
                str = ",";
            }
            m8696K.append(")");
        }
        return m8696K.toString();
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        return null;
    }

    /* renamed from: a */
    public void m40677a(Tag.TaggedType taggedType) {
        m40789cs().delete("tags", "tagged_type = ? ", new String[]{Integer.toString(taggedType.asInt())});
    }

    /* renamed from: f */
    public void m40676f(List<Tag> list) {
        SQLiteStatement compileStatement = m40789cs().compileStatement(new C1500l().m40806cS());
        if (compileStatement != null) {
            for (int i = 0; i < list.size(); i++) {
                Tag tag = list.get(i);
                compileStatement.clearBindings();
                compileStatement.bindString(1, tag.getTagName());
                compileStatement.bindString(2, tag.getTaggedItemId());
                compileStatement.bindString(3, Integer.toString(tag.getTaggedItemType().asInt()));
                compileStatement.execute();
            }
            AbstractC1504b.m40794a(compileStatement);
        }
    }
}
