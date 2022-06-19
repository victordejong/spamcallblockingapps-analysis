.class final Lcom/callapp/contacts/util/ads/TCF2Manager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/TCF2Manager;->a(Landroid/app/Activity;Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/task/OutcomeListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$2;->a:Lcom/callapp/contacts/manager/task/OutcomeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/c/e;)V
    .locals 1

    .line 129
    new-instance v0, Lcom/callapp/contacts/util/ads/TCF2Manager$2$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/util/ads/TCF2Manager$2$1;-><init>(Lcom/callapp/contacts/util/ads/TCF2Manager$2;Lcom/google/android/c/e;)V

    .line 136
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/TCF2Manager$2$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
