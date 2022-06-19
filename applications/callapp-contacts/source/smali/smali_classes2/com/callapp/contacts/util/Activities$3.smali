.class final Lcom/callapp/contacts/util/Activities$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseActivity;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/callapp/contacts/util/Activities$3;->a:Lcom/callapp/contacts/activity/base/BaseActivity;

    iput-object p2, p0, Lcom/callapp/contacts/util/Activities$3;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/callapp/contacts/util/Activities$3;->a:Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/callapp/contacts/util/Activities$3;->a:Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->unregisterActivityLifecycleListener(Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;)V

    .line 421
    iget-object p1, p0, Lcom/callapp/contacts/util/Activities$3;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
