package com.callapp.contacts.sync.syncer.upload;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/upload/JSONUploadConfiguration.class */
public class JSONUploadConfiguration {
    @JsonProperty("disabled")
    private boolean disabled;
    @JsonProperty("disabled_install_package_names")
    private List<String> disabledInstallPackageNames;
    @JsonProperty("disabled_store_names")
    private List<String> disabledStoreNames;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONUploadConfiguration jSONUploadConfiguration = (JSONUploadConfiguration) obj;
        if (this.disabled != jSONUploadConfiguration.disabled || !Objects.equals(this.disabledInstallPackageNames, jSONUploadConfiguration.disabledInstallPackageNames)) {
            return false;
        }
        return Objects.equals(this.disabledStoreNames, jSONUploadConfiguration.disabledStoreNames);
    }

    public List<String> getDisabledInstallPackageNames() {
        return this.disabledInstallPackageNames;
    }

    public List<String> getDisabledStoreNames() {
        return this.disabledStoreNames;
    }

    public int hashCode() {
        boolean z = this.disabled;
        List<String> list = this.disabledInstallPackageNames;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<String> list2 = this.disabledStoreNames;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return ((((z ? 1 : 0) * 31) + hashCode) * 31) + i;
    }

    public boolean isDisabled() {
        return this.disabled;
    }

    public void setDisabled(boolean z) {
        this.disabled = z;
    }

    public void setDisabledInstallPackageNames(List<String> list) {
        this.disabledInstallPackageNames = list;
    }

    public void setDisabledStoreNames(List<String> list) {
        this.disabledStoreNames = list;
    }
}
