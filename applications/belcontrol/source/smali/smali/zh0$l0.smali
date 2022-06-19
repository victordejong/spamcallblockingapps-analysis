.class public Lzh0$l0;
.super Lzh0$n0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l0"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;

.field public e:Lzh0$e0;

.field public f:Lzh0$e0;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzh0$n0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzh0$l0;->c:Ljava/lang/String;

    iput-object v0, p0, Lzh0$l0;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lzh0$l0;->e:Lzh0$e0;

    iput-object v0, p0, Lzh0$l0;->f:Lzh0$e0;

    iput-object v0, p0, Lzh0$l0;->g:Ljava/util/List;

    return-void
.end method
