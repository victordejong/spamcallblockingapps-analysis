.class public Lcom/google/i18n/phonenumbers/MetadataManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/i18n/phonenumbers/MetadataLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/MetadataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const-class v0, Lcom/google/i18n/phonenumbers/MetadataManager;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
