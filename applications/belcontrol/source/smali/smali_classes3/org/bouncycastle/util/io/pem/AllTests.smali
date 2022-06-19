.class public Lorg/bouncycastle/util/io/pem/AllTests;
.super Ljunit/framework/TestCase;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private lengthTest(Ljava/lang/String;Ljava/util/List;[B)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/util/io/pem/PemWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Lorg/bouncycastle/util/io/pem/PemObject;

    invoke-direct {v2, p1, p2, p3}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/util/io/pem/PemWriter;->writeObject(Lorg/bouncycastle/util/io/pem/PemObjectGenerator;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/util/io/pem/PemWriter;->getOutputSize(Lorg/bouncycastle/util/io/pem/PemObject;)I

    move-result p2

    invoke-static {p1, p2}, Ljunit/framework/TestCase;->assertEquals(II)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lorg/bouncycastle/util/io/pem/AllTests;->suite()Ljunit/framework/Test;

    move-result-object p0

    invoke-static {p0}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    return-void
.end method

.method public static suite()Ljunit/framework/Test;
    .locals 2

    new-instance v0, Ljunit/framework/TestSuite;

    const-string v1, "util tests"

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/bouncycastle/util/io/pem/AllTests;

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public testPemLength()V
    .locals 5

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x3c

    const-string v2, "CERTIFICATE"

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-array v3, v0, [B

    invoke-direct {p0, v2, v1, v3}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v1, 0x64

    new-array v1, v1, [B

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    const/16 v1, 0x65

    new-array v1, v1, [B

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    const/16 v1, 0x66

    new-array v1, v1, [B

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    const/16 v1, 0x67

    new-array v3, v1, [B

    invoke-direct {p0, v2, v0, v3}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    const/16 v3, 0x3e8

    new-array v3, v3, [B

    invoke-direct {p0, v2, v0, v3}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    const/16 v3, 0x3e9

    new-array v3, v3, [B

    invoke-direct {p0, v2, v0, v3}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    const/16 v3, 0x3ea

    new-array v3, v3, [B

    invoke-direct {p0, v2, v0, v3}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    const/16 v3, 0x3eb

    new-array v3, v3, [B

    invoke-direct {p0, v2, v0, v3}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/bouncycastle/util/io/pem/PemHeader;

    const-string v3, "Proc-Type"

    const-string v4, "4,ENCRYPTED"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/bouncycastle/util/io/pem/PemHeader;

    const-string v3, "DEK-Info"

    const-string v4, "DES3,0001020304050607"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [B

    const-string v2, "RSA PRIVATE KEY"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/util/io/pem/AllTests;->lengthTest(Ljava/lang/String;Ljava/util/List;[B)V

    return-void
.end method
