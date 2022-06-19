package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/EncodedDestination.class */
public interface EncodedDestination extends Destination {
    Set<Encoding> getSupportedEncodings();
}
