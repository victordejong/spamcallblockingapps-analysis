.class Lcom/callerid/block/sms/MessageBoxListActivity$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhani/momanii/supernova_emoji_library/Helper/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$q;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V
    .locals 9

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$q;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->S(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$q;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->S(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$q;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->S(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$q;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->S(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p1}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-interface/range {v3 .. v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    :goto_0
    return-void
.end method
