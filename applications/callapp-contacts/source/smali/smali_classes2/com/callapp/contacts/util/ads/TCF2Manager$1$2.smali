.class Lcom/callapp/contacts/util/ads/TCF2Manager$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/c/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/TCF2Manager$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/TCF2Manager$1;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$2;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/c/e;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$2$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/util/ads/TCF2Manager$1$2$1;-><init>(Lcom/callapp/contacts/util/ads/TCF2Manager$1$2;Lcom/google/android/c/e;)V

    .line 120
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/TCF2Manager$1$2$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
