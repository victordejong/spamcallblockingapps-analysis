.class public Landroid/support/v4/a/b;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/b$a;,
        Landroid/support/v4/a/b$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/a/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Z

.field final b:Landroid/os/Handler;

.field c:Landroid/support/v4/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Landroid/support/v4/a/b$1;

    invoke-direct {v0}, Landroid/support/v4/a/b$1;-><init>()V

    sput-object v0, Landroid/support/v4/a/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/b;->a:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/b;->b:Landroid/os/Handler;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/a$a;->a(Landroid/os/IBinder;)Landroid/support/v4/a/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/b;->c:Landroid/support/v4/a/a;

    .line 142
    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/a/b;->c:Landroid/support/v4/a/a;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/support/v4/a/b$a;

    invoke-direct {v0, p0}, Landroid/support/v4/a/b$a;-><init>(Landroid/support/v4/a/b;)V

    iput-object v0, p0, Landroid/support/v4/a/b;->c:Landroid/support/v4/a/a;

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/b;->c:Landroid/support/v4/a/a;

    invoke-interface {v0}, Landroid/support/v4/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 135
    monitor-exit p0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
