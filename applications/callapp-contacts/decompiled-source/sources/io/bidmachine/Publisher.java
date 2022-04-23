package io.bidmachine;

import android.text.TextUtils;
import com.explorestack.protobuf.adcom.Context;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/Publisher.class */
public class Publisher {
    private List<String> categories;
    private String domain;
    private String id;
    private String name;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/Publisher$Builder.class */
    public static final class Builder {
        private List<String> categories;
        private String domain;
        private String id;
        private String name;

        public final Builder addCategories(List<String> list) {
            if (list != null && !list.isEmpty()) {
                for (String str : list) {
                    addCategory(str);
                }
            }
            return this;
        }

        public final Builder addCategory(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            if (this.categories == null) {
                this.categories = new ArrayList();
            }
            this.categories.add(str);
            return this;
        }

        public final Publisher build() {
            return new Publisher(this.id, this.name, this.domain, this.categories);
        }

        public final Builder setDomain(String str) {
            this.domain = str;
            return this;
        }

        public final Builder setId(String str) {
            this.id = str;
            return this;
        }

        public final Builder setName(String str) {
            this.name = str;
            return this;
        }
    }

    private Publisher(String str, String str2, String str3, List<String> list) {
        this.id = str;
        this.name = str2;
        this.domain = str3;
        this.categories = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void build(Context.App.Builder builder) {
        Context.App.Publisher.Builder newBuilder = Context.App.Publisher.newBuilder();
        String str = this.id;
        if (str != null) {
            newBuilder.setId(str);
        }
        String str2 = this.name;
        if (str2 != null) {
            newBuilder.setName(str2);
        }
        String str3 = this.domain;
        if (str3 != null) {
            newBuilder.setDomain(str3);
        }
        List<String> list = this.categories;
        if (list != null) {
            newBuilder.addAllCat(list);
        }
        builder.setPub(newBuilder.build());
    }
}
