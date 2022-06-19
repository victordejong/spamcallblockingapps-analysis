.class public final Lcom/facebook/ads/redexgen/X/I7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/I5;,
        Lcom/facebook/ads/internal/exoplayer2/util/EGLSurfaceTexture$SecureMode;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:[I


# instance fields
.field public A00:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/opengl/EGLContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Landroid/opengl/EGLDisplay;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Landroid/opengl/EGLSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Landroid/os/Handler;

.field public final A05:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 37645
    invoke-static {}, Lcom/facebook/ads/redexgen/X/I7;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/I7;->A05()V

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/I7;->A08:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 37646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37647
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I7;->A04:Landroid/os/Handler;

    .line 37648
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A05:[I

    .line 37649
    return-void
.end method

.method public static A00(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 10

    .line 37650
    const/4 v1, 0x1

    new-array v5, v1, [Landroid/opengl/EGLConfig;

    .line 37651
    .local v2, "configs":[Landroid/opengl/EGLConfig;
    new-array v8, v1, [I

    .line 37652
    .local v5, "numConfigs":[I
    sget-object v3, Lcom/facebook/ads/redexgen/X/I7;->A08:[I

    .line 37653
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v4

    .line 37654
    .local v1, "success":Z
    const/4 v2, 0x0

    if-eqz v4, :cond_1

    aget v0, v8, v2

    if-lez v0, :cond_1

    aget-object v0, v5, v2

    if-eqz v0, :cond_1

    .line 37655
    aget-object v3, v5, v2

    sget-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const-string v1, "DMqWCvggOqPJpCHNGoEqZHY4ifR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "byBQgdMlX8zEXtUm0RiKhMHqrfi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 37656
    :cond_1
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    .line 37657
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    aget v0, v8, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v1, 0x2

    aget-object v0, v5, v2

    aput-object v0, v3, v1

    .line 37658
    const/4 v2, 0x0

    const/16 v1, 0x43

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I7;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0P(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/I5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I4;)V

    throw v0
.end method

.method public static A01(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 4

    .line 37659
    if-nez p2, :cond_0

    .line 37660
    const/4 v0, 0x3

    new-array v3, v0, [I

    sget-object v1, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const-string v1, "cU7U2EhHuRUL2lL3eKls7qrANE8lI8fm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    .line 37661
    .local p0, "glAttributes":[I
    .restart local p0    # "glAttributes":[I
    :goto_0
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 37662
    invoke-static {p0, p1, v1, v3, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    .line 37663
    .local p1, "context":Landroid/opengl/EGLContext;
    if-eqz v0, :cond_1

    .line 37664
    return-object v0

    .line 37665
    .end local p0    # "glAttributes":[I
    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    fill-array-data v3, :array_1

    goto :goto_0

    .line 37666
    :cond_1
    const/4 v3, 0x0

    const/16 v2, 0x43

    const/16 v1, 0x17

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I7;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/I5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I4;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method public static A02()Landroid/opengl/EGLDisplay;
    .locals 6

    .line 37667
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_2

    .line 37668
    .local v5, "display":Landroid/opengl/EGLDisplay;
    sget-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const-string v1, "MMCdEOBwZh80bhyOLj2CCNssrQY6KAxD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v3, 0x0

    if-eqz v5, :cond_1

    .line 37669
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 37670
    .local v0, "version":[I
    const/4 v0, 0x1

    .line 37671
    invoke-static {v5, v1, v4, v1, v0}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_2

    .line 37672
    .local v4, "eglInitialized":Z
    sget-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const-string v1, "lOmnEhb6InpwqyPQ0uLg6SmDVAcO3SnX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    .line 37673
    return-object v5

    .line 37674
    :cond_0
    const/16 v2, 0x8c

    const/16 v1, 0x14

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I7;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/I5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I4;)V

    throw v0

    .line 37675
    .end local v4    # "eglInitialized":Z
    .end local v0    # "version":[I
    :cond_1
    const/16 v2, 0x78

    const/16 v1, 0x14

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I7;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/I5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I4;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .locals 4

    .line 37676
    const/4 v3, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 37677
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 37678
    .local p1, "surface":Landroid/opengl/EGLSurface;
    .end local p2    # null:Landroid/opengl/EGLContext;
    .local p1, "surface":Landroid/opengl/EGLSurface;
    :goto_0
    invoke-static {p0, v0, v0, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    .line 37679
    .local p2, "eglMadeCurrent":Z
    if-eqz v1, :cond_2

    .line 37680
    return-object v0

    .line 37681
    .end local p1    # "surface":Landroid/opengl/EGLSurface;
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 37682
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 37683
    .local p1, "pbufferAttributes":[I
    .restart local p1    # "pbufferAttributes":[I
    :goto_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 37684
    .local p2, "surface":Landroid/opengl/EGLSurface;
    if-eqz v0, :cond_3

    goto :goto_0

    .line 37685
    .end local p1    # "pbufferAttributes":[I
    :cond_1
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    goto :goto_1

    .line 37686
    :cond_2
    const/16 v2, 0xa0

    const/16 v1, 0x15

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I7;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/I5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I4;)V

    throw v0

    .line 37687
    .local p1, "pbufferAttributes":[I
    .local p2, "surface":Landroid/opengl/EGLSurface;
    :cond_3
    const/16 v2, 0x5a

    const/16 v1, 0x1e

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I7;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/I5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I4;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/I7;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xd2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/I7;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        -0x18t
        -0x13t
        -0x3ct
        -0x17t
        -0x10t
        -0x10t
        -0xct
        -0x1at
        -0x3ct
        -0x10t
        -0x11t
        -0x19t
        -0x16t
        -0x18t
        -0x5ft
        -0x19t
        -0x1et
        -0x16t
        -0x13t
        -0x1at
        -0x1bt
        -0x45t
        -0x5ft
        -0xct
        -0xat
        -0x1ct
        -0x1ct
        -0x1at
        -0xct
        -0xct
        -0x42t
        -0x5at
        -0x1dt
        -0x53t
        -0x5ft
        -0x11t
        -0xat
        -0x12t
        -0x3ct
        -0x10t
        -0x11t
        -0x19t
        -0x16t
        -0x18t
        -0xct
        -0x24t
        -0x4ft
        -0x22t
        -0x42t
        -0x5at
        -0x1bt
        -0x53t
        -0x5ft
        -0x1ct
        -0x10t
        -0x11t
        -0x19t
        -0x16t
        -0x18t
        -0xct
        -0x24t
        -0x4ft
        -0x22t
        -0x42t
        -0x5at
        -0xct
        0x44t
        0x46t
        0x4bt
        0x22t
        0x51t
        0x44t
        0x40t
        0x53t
        0x44t
        0x22t
        0x4et
        0x4dt
        0x53t
        0x44t
        0x57t
        0x53t
        -0x1t
        0x45t
        0x40t
        0x48t
        0x4bt
        0x44t
        0x43t
        0x37t
        0x39t
        0x3et
        0x15t
        0x44t
        0x37t
        0x33t
        0x46t
        0x37t
        0x22t
        0x34t
        0x47t
        0x38t
        0x38t
        0x37t
        0x44t
        0x25t
        0x47t
        0x44t
        0x38t
        0x33t
        0x35t
        0x37t
        -0xet
        0x38t
        0x33t
        0x3bt
        0x3et
        0x37t
        0x36t
        0x3dt
        0x3ft
        0x44t
        0x1ft
        0x3dt
        0x4ct
        0x1ct
        0x41t
        0x4bt
        0x48t
        0x44t
        0x39t
        0x51t
        -0x8t
        0x3et
        0x39t
        0x41t
        0x44t
        0x3dt
        0x3ct
        -0x11t
        -0xft
        -0xat
        -0x2dt
        -0x8t
        -0xdt
        -0x2t
        -0xdt
        -0x15t
        -0xat
        -0xdt
        0x4t
        -0x11t
        -0x56t
        -0x10t
        -0x15t
        -0xdt
        -0xat
        -0x11t
        -0x12t
        0xft
        0x11t
        0x16t
        -0x9t
        0xbt
        0x15t
        0xft
        -0x13t
        0x1ft
        0x1ct
        0x1ct
        0xft
        0x18t
        0x1et
        -0x36t
        0x10t
        0xbt
        0x13t
        0x16t
        0xft
        0xet
        0x38t
        0x3dt
        0x18t
        0x36t
        0x3ft
        0x25t
        0x36t
        0x49t
        0x45t
        0x46t
        0x43t
        0x36t
        0x44t
        -0xft
        0x37t
        0x32t
        0x3at
        0x3dt
        0x36t
        0x35t
        -0x1t
        -0xft
        0x16t
        0x43t
        0x43t
        0x40t
        0x43t
        0xbt
        -0xft
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HA9Ipil8z9Sfr3M6c"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tSdEvOliHENef2DRw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QxMfBBaDxXSMREgyjfmhAPuOC8a"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rre0bVKSiGOQhW2dV1eKZqfRy2vewoJw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sRbq2k4fEt0n0RQGEX4BvMK2qHQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7IGK3W5uSnBrputNkoFgIc3HzFIDFEh4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iBtHaJmoTqxNJ7jiCqMgPLhc83wDna0o"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OoyVaW21Hkr9D2T2JZZcb1dbaNLA8dPs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    return-void
.end method

.method public static A07([I)V
    .locals 4

    .line 37688
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 37689
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p0

    .line 37690
    .local p0, "errorCode":I
    if-nez p0, :cond_0

    .line 37691
    return-void

    .line 37692
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb5

    const/16 v1, 0x1d

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I7;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/I5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/I4;)V

    throw v0
.end method


# virtual methods
.method public final A08()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 37693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A00:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final A09()V
    .locals 7

    .line 37694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A04:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37695
    const/16 v4, 0x13

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A00:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 37696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A00:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 37697
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A05:[I

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37698
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_2

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v0}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const-string v1, "Ky4J9LhhY6oVhToVnJqyCFp4AsuDFNJg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "DxuFYjrn8VhBdJzS0iEUp6Jj8MnDCj48"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v5, :cond_2

    .line 37699
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v5, v2, v1, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 37700
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A03:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_3

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 37701
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A03:Landroid/opengl/EGLSurface;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 37702
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A01:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_4

    .line 37703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 37704
    :cond_4
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    if-lt v0, v4, :cond_5

    .line 37705
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 37706
    :cond_5
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    .line 37707
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/I7;->A01:Landroid/opengl/EGLContext;

    .line 37708
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/I7;->A03:Landroid/opengl/EGLSurface;

    .line 37709
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/I7;->A00:Landroid/graphics/SurfaceTexture;

    .line 37710
    return-void

    .line 37711
    :catchall_0
    move-exception v6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_6

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v0}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 37712
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v5, v2, v1, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 37713
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A03:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_7

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 37714
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A03:Landroid/opengl/EGLSurface;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 37715
    :cond_7
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/I7;->A01:Landroid/opengl/EGLContext;

    sget-object v1, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const-string v1, "S4KgNNePeSa0SdGvJcx0lLfMZWQD5LnA"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "zortW8CQcW1jcRf1BuifsL0TvoYDyorS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v5, :cond_8

    .line 37716
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v5}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 37717
    :cond_8
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    if-lt v0, v4, :cond_9

    .line 37718
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 37719
    :cond_9
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    .line 37720
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/I7;->A01:Landroid/opengl/EGLContext;

    .line 37721
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/I7;->A03:Landroid/opengl/EGLSurface;

    .line 37722
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/I7;->A00:Landroid/graphics/SurfaceTexture;

    .line 37723
    throw v6

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/I7;->A07:[Ljava/lang/String;

    const-string v1, "H0XWp6WvcxURiSaWBFxYP1IAZqxBWyPF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_8

    goto :goto_0
.end method

.method public final A0A(I)V
    .locals 3

    .line 37724
    invoke-static {}, Lcom/facebook/ads/redexgen/X/I7;->A02()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    .line 37725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I7;->A00(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v2

    .line 37726
    .local p0, "config":Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/I7;->A01(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A01:Landroid/opengl/EGLContext;

    .line 37727
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A02:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A01:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v0, p1}, Lcom/facebook/ads/redexgen/X/I7;->A03(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A03:Landroid/opengl/EGLSurface;

    .line 37728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A05:[I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I7;->A07([I)V

    .line 37729
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I7;->A05:[I

    const/4 v0, 0x0

    aget v1, v1, v0

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A00:Landroid/graphics/SurfaceTexture;

    .line 37730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A00:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 37731
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 37732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I7;->A04:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37733
    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 37734
    .local p0, "this":Lcom/facebook/ads/redexgen/X/I7;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/I7;->A00:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 37735
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/I7;->A00:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 37736
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/I7;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
