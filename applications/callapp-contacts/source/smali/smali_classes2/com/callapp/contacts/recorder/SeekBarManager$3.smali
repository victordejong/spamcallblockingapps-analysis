.class Lcom/callapp/contacts/recorder/SeekBarManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/SeekBarManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/SeekBarManager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$3;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$3;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->c()V

    return-void
.end method
