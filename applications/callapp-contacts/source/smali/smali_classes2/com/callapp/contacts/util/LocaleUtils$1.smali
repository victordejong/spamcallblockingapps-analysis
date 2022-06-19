.class final Lcom/callapp/contacts/util/LocaleUtils$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/a;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/play/core/tasks/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/callapp/contacts/util/LocaleUtils$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/util/LocaleUtils$1;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/callapp/contacts/util/LocaleUtils$1;->c:Z

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/callapp/contacts/util/LocaleUtils$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/callapp/contacts/util/LocaleUtils$1;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/callapp/contacts/util/LocaleUtils$1;->c:Z

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    return-void
.end method
