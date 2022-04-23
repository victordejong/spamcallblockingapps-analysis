package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/json/DupDetector.class */
public class DupDetector {
    public String _firstName;
    public String _secondName;
    public HashSet<String> _seen;
    public final Object _source;

    public DupDetector(Object obj) {
        this._source = obj;
    }

    public static DupDetector rootDetector(JsonGenerator jsonGenerator) {
        return new DupDetector(jsonGenerator);
    }

    public static DupDetector rootDetector(JsonParser jsonParser) {
        return new DupDetector(jsonParser);
    }

    public DupDetector child() {
        return new DupDetector(this._source);
    }

    public Object getSource() {
        return this._source;
    }

    public boolean isDup(String str) throws JsonParseException {
        String str2 = this._firstName;
        if (str2 == null) {
            this._firstName = str;
            return false;
        } else if (str.equals(str2)) {
            return true;
        } else {
            String str3 = this._secondName;
            if (str3 == null) {
                this._secondName = str;
                return false;
            } else if (str.equals(str3)) {
                return true;
            } else {
                if (this._seen == null) {
                    this._seen = new HashSet<>(16);
                    this._seen.add(this._firstName);
                    this._seen.add(this._secondName);
                }
                return !this._seen.add(str);
            }
        }
    }

    public void reset() {
        this._firstName = null;
        this._secondName = null;
        this._seen = null;
    }
}
