.class public abstract Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;,
        Lcom/liulishuo/filedownloader/message/MessageSnapshot$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field protected c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$a;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b:I

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getEtag"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getFileName"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b:I

    return v0
.end method

.method public f()J
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getLargeSofarBytes"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public g()J
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getLargeTotalBytes"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public h()I
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getRetryingTimes"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public i()I
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getSmallSofarBytes"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public l()I
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getSmallTotalBytes"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public abstract synthetic m()B
.end method

.method public n()Ljava/lang/Throwable;
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "getThrowable"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c:Z

    return v0
.end method

.method public p()Z
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "isResuming"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public q()Z
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;

    const-string v1, "isReusedDownloadedFile"

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
