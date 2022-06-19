.class Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a(Lcom/google/android/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/c/b;

.field final synthetic b:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;Lcom/google/android/c/b;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;->b:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;->a:Lcom/google/android/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;->a:Lcom/google/android/c/b;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;->b:Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->a:Landroid/app/Activity;

    new-instance v2, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1$1;-><init>(Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/c/b;->a(Landroid/app/Activity;Lcom/google/android/c/b$a;)V

    return-void
.end method
