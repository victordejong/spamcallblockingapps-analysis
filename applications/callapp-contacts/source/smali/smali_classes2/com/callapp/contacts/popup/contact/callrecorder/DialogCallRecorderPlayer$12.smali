.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$12;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Landroid/widget/ImageView;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$12;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$12;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 429
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$12;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$1100(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$12;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$000(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    .line 430
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$12;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$12;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$1200(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Landroid/widget/ImageView;Z)V

    return-void
.end method
