package com.apptentive.android.sdk.module.engagement.interaction.model.common;

import com.apptentive.android.sdk.module.engagement.interaction.model.Invocation;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/common/LaunchInteractionAction.class */
public class LaunchInteractionAction extends Action {
    private static final String KEY_INVOKES = "invokes";

    public LaunchInteractionAction(String str) throws JSONException {
        super(str);
    }

    public List<Invocation> getInvocations() {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            if (!isNull(KEY_INVOKES) && (jSONArray = getJSONArray(KEY_INVOKES)) != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(new Invocation(jSONArray.getJSONObject(i).toString()));
                }
            }
        } catch (JSONException e) {
        }
        return arrayList;
    }
}
