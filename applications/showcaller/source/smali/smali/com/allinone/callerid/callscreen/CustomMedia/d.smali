.class public final synthetic Lcom/allinone/callerid/callscreen/CustomMedia/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/exoplayer2/x0;

.field public final synthetic e:Landroid/os/HandlerThread;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/x0;Landroid/os/HandlerThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/d;->d:Lcom/google/android/exoplayer2/x0;

    iput-object p2, p0, Lcom/allinone/callerid/callscreen/CustomMedia/d;->e:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/d;->d:Lcom/google/android/exoplayer2/x0;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/d;->e:Landroid/os/HandlerThread;

    invoke-static {v0, v1}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->lambda$release$2(Lcom/google/android/exoplayer2/x0;Landroid/os/HandlerThread;)V

    return-void
.end method
