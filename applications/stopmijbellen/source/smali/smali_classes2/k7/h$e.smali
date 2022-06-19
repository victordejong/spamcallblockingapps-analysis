.class public Lk7/h$e;
.super Lm7/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/g<",
        "Lk7/a;",
        ">;"
    }
.end annotation


# instance fields
.field public j:Ljava/nio/channels/SocketChannel;

.field public k:Ll7/b;


# direct methods
.method public constructor <init>(Lk7/h;Lk7/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm7/g;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lk7/h$e;->j:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
