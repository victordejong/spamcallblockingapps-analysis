package com.callapp.contacts.model;

import com.callapp.framework.util.StringUtils;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/Note.class */
public class Note implements Serializable {
    private static final long serialVersionUID = -3944656042495134945L;
    private String note;

    public Note(String str) {
        if (StringUtils.a((CharSequence) str)) {
            setNoteText("");
        } else {
            setNoteText(str);
        }
    }

    public String getNoteText() {
        return this.note;
    }

    public void setNoteText(String str) {
        this.note = str;
    }
}
