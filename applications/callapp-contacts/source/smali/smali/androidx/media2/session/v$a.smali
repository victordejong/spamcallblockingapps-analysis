.class final Landroidx/media2/session/v$a;
.super Landroidx/c/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/c/a/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:I

.field final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Landroidx/c/a/a;-><init>()V

    .line 148
    iput p1, p0, Landroidx/media2/session/v$a;->f:I

    .line 149
    iput-object p2, p0, Landroidx/media2/session/v$a;->g:Ljava/lang/Object;

    return-void
.end method

.method static a(ILjava/lang/Object;)Landroidx/media2/session/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Landroidx/media2/session/v$a<",
            "TT;>;"
        }
    .end annotation

    .line 127
    new-instance v0, Landroidx/media2/session/v$a;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/v$a;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 132
    invoke-super {p0, p1}, Landroidx/c/a/a;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
