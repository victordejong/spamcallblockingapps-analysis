.class final Lcom/explorestack/protobuf/ext/Timestamps$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ext/Timestamps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ext/Timestamps$1;->initialValue()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected final initialValue()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 27
    invoke-static {}, Lcom/explorestack/protobuf/ext/Timestamps;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method
