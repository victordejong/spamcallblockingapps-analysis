.class public Lcom/android/mms/dom/smil/SmilElementImpl;
.super Lcom/android/mms/dom/ElementImpl;
.source ""

# interfaces
.implements Lorg/w3c/dom/smil/SMILElement;


# direct methods
.method public constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/ElementImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
