.class Lcom/callapp/contacts/activity/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseActivity;->safePostOnUIThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity$1;->b:Lcom/callapp/contacts/activity/base/BaseActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseActivity$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$1;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->safeRun(Ljava/lang/Runnable;)V

    return-void
.end method
