.class public Lorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyEnumeration"
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/x509/TBSCertList;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;->this$0:Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/x509/TBSCertList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lorg/bouncycastle/asn1/x509/TBSCertList;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
