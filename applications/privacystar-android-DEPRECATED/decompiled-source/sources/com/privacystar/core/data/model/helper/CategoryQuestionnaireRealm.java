package com.privacystar.core.data.model.helper;

import android.support.annotation.NonNull;
import com.privacystar.core.data.model.CategoryQuestionnaire;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/CategoryQuestionnaireRealm.class */
public class CategoryQuestionnaireRealm {
    @NonNull
    public static String getCategorySelected(@NonNull Realm realm, @NonNull String str) {
        CategoryQuestionnaire questionnaire = getQuestionnaire(realm, str);
        return questionnaire == null ? "" : Text.safeString(questionnaire.getCategorySelected());
    }

    public static CategoryQuestionnaire getQuestionnaire(@NonNull Realm realm, @NonNull String str) {
        return (CategoryQuestionnaire) realm.where(CategoryQuestionnaire.class).equalTo("phoneNumber", str).findFirst();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$storeResponse$0$CategoryQuestionnaireRealm(String str, String str2, Realm realm) {
        CategoryQuestionnaire questionnaire = getQuestionnaire(realm, str);
        CategoryQuestionnaire categoryQuestionnaire = questionnaire;
        if (questionnaire == null) {
            categoryQuestionnaire = (CategoryQuestionnaire) realm.createObject(CategoryQuestionnaire.class, str);
        }
        categoryQuestionnaire.setCategorySelected(str2);
        Timber.m37d("Stored response [%s] for number [%s] in Realm.", str2, str);
    }

    public static boolean questionnaireRecorded(@NonNull Realm realm, @NonNull String str) {
        return getQuestionnaire(realm, str) != null;
    }

    public static void storeResponse(@NonNull Realm realm, @NonNull final String str, @NonNull final String str2) {
        realm.executeTransaction(new Realm.Transaction(str, str2) { // from class: com.privacystar.core.data.model.helper.CategoryQuestionnaireRealm$$Lambda$0
            private final String arg$1;
            private final String arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
                this.arg$2 = str2;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                CategoryQuestionnaireRealm.lambda$storeResponse$0$CategoryQuestionnaireRealm(this.arg$1, this.arg$2, realm2);
            }
        });
    }
}
