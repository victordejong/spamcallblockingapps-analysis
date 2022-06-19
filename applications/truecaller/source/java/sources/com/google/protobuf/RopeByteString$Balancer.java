package com.google.protobuf;

import com.google.protobuf.RopeByteString;
import java.util.ArrayDeque;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/RopeByteString$Balancer.class */
public class RopeByteString$Balancer {
    private final ArrayDeque<ByteString> prefixesStack;

    private RopeByteString$Balancer() {
        this.prefixesStack = new ArrayDeque<>();
    }

    public ByteString balance(ByteString byteString, ByteString byteString2) {
        doBalance(byteString);
        doBalance(byteString2);
        RopeByteString ropeByteString = (ByteString) this.prefixesStack.pop();
        while (true) {
            RopeByteString ropeByteString2 = ropeByteString;
            if (!this.prefixesStack.isEmpty()) {
                ropeByteString = new RopeByteString(this.prefixesStack.pop(), ropeByteString2, (RopeByteString.1) null);
            } else {
                return ropeByteString2;
            }
        }
    }

    private void doBalance(ByteString byteString) {
        if (byteString.isBalanced()) {
            insert(byteString);
        } else if (!(byteString instanceof RopeByteString)) {
            StringBuilder m8728C = C22128a.m8728C("Has a new type of ByteString been created? Found ");
            m8728C.append(byteString.getClass());
            throw new IllegalArgumentException(m8728C.toString());
        } else {
            RopeByteString ropeByteString = (RopeByteString) byteString;
            doBalance(RopeByteString.access$400(ropeByteString));
            doBalance(RopeByteString.access$500(ropeByteString));
        }
    }

    private int getDepthBinForLength(int i) {
        int binarySearch = Arrays.binarySearch(RopeByteString.minLengthByDepth, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }

    private void insert(ByteString byteString) {
        ByteString byteString2;
        ByteString byteString3;
        int depthBinForLength = getDepthBinForLength(byteString.size());
        int minLength = RopeByteString.minLength(depthBinForLength + 1);
        if (this.prefixesStack.isEmpty() || this.prefixesStack.peek().size() >= minLength) {
            this.prefixesStack.push(byteString);
            return;
        }
        int minLength2 = RopeByteString.minLength(depthBinForLength);
        ByteString pop = this.prefixesStack.pop();
        while (true) {
            byteString2 = pop;
            if (this.prefixesStack.isEmpty() || this.prefixesStack.peek().size() >= minLength2) {
                break;
            }
            pop = new RopeByteString(this.prefixesStack.pop(), byteString2, (RopeByteString.1) null);
        }
        ByteString ropeByteString = new RopeByteString(byteString2, byteString, (RopeByteString.1) null);
        while (true) {
            byteString3 = ropeByteString;
            if (this.prefixesStack.isEmpty()) {
                break;
            }
            if (this.prefixesStack.peek().size() >= RopeByteString.minLength(getDepthBinForLength(byteString3.size()) + 1)) {
                break;
            }
            ropeByteString = new RopeByteString(this.prefixesStack.pop(), byteString3, (RopeByteString.1) null);
        }
        this.prefixesStack.push(byteString3);
    }
}
