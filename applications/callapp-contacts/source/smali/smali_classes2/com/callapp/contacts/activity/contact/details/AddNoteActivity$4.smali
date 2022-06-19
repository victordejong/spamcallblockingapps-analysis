.class Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;->b:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;->b:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->e(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;->b:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->e(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;->b:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->f(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/loader/device/NoteLoader;->a(JLjava/lang/String;I)V

    return-void
.end method
