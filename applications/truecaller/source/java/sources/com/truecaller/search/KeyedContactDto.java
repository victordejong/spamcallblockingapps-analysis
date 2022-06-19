package com.truecaller.search;

import com.truecaller.data.dto.ContactDto;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes13-dex2jar.jar:com/truecaller/search/KeyedContactDto.class */
public class KeyedContactDto {
    public List<KeyedContact> data = new ArrayList();

    /* loaded from: classes13-dex2jar.jar:com/truecaller/search/KeyedContactDto$KeyedContact.class */
    public static class KeyedContact {
        public String key;
        public ContactDto.Contact value;

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("KeyedContact{value=");
            m8728C.append(this.value);
            m8728C.append('}');
            return m8728C.toString();
        }
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("KeyedContactDto{data=");
        m8728C.append(this.data);
        m8728C.append('}');
        return m8728C.toString();
    }
}
