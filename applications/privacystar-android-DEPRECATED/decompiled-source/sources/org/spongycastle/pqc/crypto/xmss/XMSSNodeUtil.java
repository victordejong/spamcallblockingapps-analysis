package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.pqc.crypto.xmss.HashTreeAddress;
import org.spongycastle.pqc.crypto.xmss.LTreeAddress;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSNodeUtil.class */
public class XMSSNodeUtil {
    XMSSNodeUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMSSNode lTree(WOTSPlus wOTSPlus, WOTSPlusPublicKeyParameters wOTSPlusPublicKeyParameters, LTreeAddress lTreeAddress) {
        double d;
        if (wOTSPlusPublicKeyParameters == null) {
            throw new NullPointerException("publicKey == null");
        } else if (lTreeAddress == null) {
            throw new NullPointerException("address == null");
        } else {
            int len = wOTSPlus.getParams().getLen();
            byte[][] byteArray = wOTSPlusPublicKeyParameters.toByteArray();
            XMSSNode[] xMSSNodeArr = new XMSSNode[byteArray.length];
            for (int i = 0; i < byteArray.length; i++) {
                xMSSNodeArr[i] = new XMSSNode(0, byteArray[i]);
            }
            LTreeAddress lTreeAddress2 = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(lTreeAddress.getLTreeAddress()).withTreeHeight(0).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(lTreeAddress.getKeyAndMask()).build();
            while (len > 1) {
                int i2 = 0;
                while (true) {
                    d = len / 2;
                    if (i2 >= ((int) Math.floor(d))) {
                        break;
                    }
                    lTreeAddress2 = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress2.getLayerAddress()).withTreeAddress(lTreeAddress2.getTreeAddress()).withLTreeAddress(lTreeAddress2.getLTreeAddress()).withTreeHeight(lTreeAddress2.getTreeHeight()).withTreeIndex(i2).withKeyAndMask(lTreeAddress2.getKeyAndMask()).build();
                    int i3 = i2 * 2;
                    xMSSNodeArr[i2] = randomizeHash(wOTSPlus, xMSSNodeArr[i3], xMSSNodeArr[i3 + 1], lTreeAddress2);
                    i2++;
                }
                if (len % 2 == 1) {
                    xMSSNodeArr[(int) Math.floor(d)] = xMSSNodeArr[len - 1];
                }
                len = (int) Math.ceil(len / 2.0d);
                lTreeAddress2 = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress2.getLayerAddress()).withTreeAddress(lTreeAddress2.getTreeAddress()).withLTreeAddress(lTreeAddress2.getLTreeAddress()).withTreeHeight(lTreeAddress2.getTreeHeight() + 1).withTreeIndex(lTreeAddress2.getTreeIndex()).withKeyAndMask(lTreeAddress2.getKeyAndMask()).build();
            }
            return xMSSNodeArr[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMSSNode randomizeHash(WOTSPlus wOTSPlus, XMSSNode xMSSNode, XMSSNode xMSSNode2, XMSSAddress xMSSAddress) {
        XMSSAddress xMSSAddress2;
        XMSSAddress xMSSAddress3;
        XMSSAddress xMSSAddress4;
        if (xMSSNode == null) {
            throw new NullPointerException("left == null");
        } else if (xMSSNode2 == null) {
            throw new NullPointerException("right == null");
        } else if (xMSSNode.getHeight() != xMSSNode2.getHeight()) {
            throw new IllegalStateException("height of both nodes must be equal");
        } else if (xMSSAddress == null) {
            throw new NullPointerException("address == null");
        } else {
            byte[] publicSeed = wOTSPlus.getPublicSeed();
            if (xMSSAddress instanceof LTreeAddress) {
                LTreeAddress lTreeAddress = (LTreeAddress) xMSSAddress;
                xMSSAddress2 = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(lTreeAddress.getLTreeAddress()).withTreeHeight(lTreeAddress.getTreeHeight()).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(0).build();
            } else {
                xMSSAddress2 = xMSSAddress;
                if (xMSSAddress instanceof HashTreeAddress) {
                    HashTreeAddress hashTreeAddress = (HashTreeAddress) xMSSAddress;
                    xMSSAddress2 = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress()).withTreeHeight(hashTreeAddress.getTreeHeight()).withTreeIndex(hashTreeAddress.getTreeIndex()).withKeyAndMask(0).build();
                }
            }
            byte[] PRF = wOTSPlus.getKhf().PRF(publicSeed, xMSSAddress2.toByteArray());
            if (xMSSAddress2 instanceof LTreeAddress) {
                LTreeAddress lTreeAddress2 = (LTreeAddress) xMSSAddress2;
                xMSSAddress3 = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress2.getLayerAddress()).withTreeAddress(lTreeAddress2.getTreeAddress()).withLTreeAddress(lTreeAddress2.getLTreeAddress()).withTreeHeight(lTreeAddress2.getTreeHeight()).withTreeIndex(lTreeAddress2.getTreeIndex()).withKeyAndMask(1).build();
            } else {
                xMSSAddress3 = xMSSAddress2;
                if (xMSSAddress2 instanceof HashTreeAddress) {
                    HashTreeAddress hashTreeAddress2 = (HashTreeAddress) xMSSAddress2;
                    xMSSAddress3 = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress2.getLayerAddress()).withTreeAddress(hashTreeAddress2.getTreeAddress()).withTreeHeight(hashTreeAddress2.getTreeHeight()).withTreeIndex(hashTreeAddress2.getTreeIndex()).withKeyAndMask(1).build();
                }
            }
            byte[] PRF2 = wOTSPlus.getKhf().PRF(publicSeed, xMSSAddress3.toByteArray());
            if (xMSSAddress3 instanceof LTreeAddress) {
                LTreeAddress lTreeAddress3 = (LTreeAddress) xMSSAddress3;
                xMSSAddress4 = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress3.getLayerAddress()).withTreeAddress(lTreeAddress3.getTreeAddress()).withLTreeAddress(lTreeAddress3.getLTreeAddress()).withTreeHeight(lTreeAddress3.getTreeHeight()).withTreeIndex(lTreeAddress3.getTreeIndex()).withKeyAndMask(2).build();
            } else {
                xMSSAddress4 = xMSSAddress3;
                if (xMSSAddress3 instanceof HashTreeAddress) {
                    HashTreeAddress hashTreeAddress3 = (HashTreeAddress) xMSSAddress3;
                    xMSSAddress4 = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress3.getLayerAddress()).withTreeAddress(hashTreeAddress3.getTreeAddress()).withTreeHeight(hashTreeAddress3.getTreeHeight()).withTreeIndex(hashTreeAddress3.getTreeIndex()).withKeyAndMask(2).build();
                }
            }
            byte[] PRF3 = wOTSPlus.getKhf().PRF(publicSeed, xMSSAddress4.toByteArray());
            int digestSize = wOTSPlus.getParams().getDigestSize();
            byte[] bArr = new byte[digestSize * 2];
            for (int i = 0; i < digestSize; i++) {
                bArr[i] = (byte) (xMSSNode.getValue()[i] ^ PRF2[i]);
            }
            for (int i2 = 0; i2 < digestSize; i2++) {
                bArr[i2 + digestSize] = (byte) (xMSSNode2.getValue()[i2] ^ PRF3[i2]);
            }
            return new XMSSNode(xMSSNode.getHeight(), wOTSPlus.getKhf().m95H(PRF, bArr));
        }
    }
}
