.class Lcom/callapp/contacts/recorder/SeekBarManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 126
    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$2;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 129
    const-class p1, Lcom/callapp/contacts/recorder/SeekBarManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaPlayer error - what: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extra: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
