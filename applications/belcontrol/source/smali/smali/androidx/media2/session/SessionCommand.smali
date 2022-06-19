.class public final Landroidx/media2/session/SessionCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf40;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionCommand$a;
    }
.end annotation


# static fields
.field public static final d:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->d:Lb4;

    new-instance v1, Lb4;

    invoke-direct {v1}, Lb4;-><init>()V

    sput-object v1, Landroidx/media2/session/SessionCommand;->e:Lb4;

    new-instance v2, Lb4;

    invoke-direct {v2}, Lb4;-><init>()V

    sput-object v2, Landroidx/media2/session/SessionCommand;->f:Lb4;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroidx/media2/session/SessionCommand$a;

    const/16 v5, 0x2710

    const/16 v6, 0x2714

    invoke-direct {v4, v5, v6}, Landroidx/media2/session/SessionCommand$a;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media2/session/SessionCommand$a;

    const/16 v4, 0x2715

    const/16 v5, 0x2722

    invoke-direct {v0, v4, v5}, Landroidx/media2/session/SessionCommand$a;-><init>(II)V

    invoke-virtual {v1, v3, v0}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media2/session/SessionCommand$a;

    const/16 v1, 0x2af8

    const/16 v4, 0x2afa

    invoke-direct {v0, v1, v4}, Landroidx/media2/session/SessionCommand$a;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->g:Lb4;

    new-instance v1, Landroidx/media2/session/SessionCommand$a;

    const/16 v2, 0x7530

    const/16 v4, 0x7531

    invoke-direct {v1, v2, v4}, Landroidx/media2/session/SessionCommand$a;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->h:Lb4;

    new-instance v1, Landroidx/media2/session/SessionCommand$a;

    const v2, 0x9c40

    const v4, 0x9c4a

    invoke-direct {v1, v2, v4}, Landroidx/media2/session/SessionCommand$a;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->i:Lb4;

    new-instance v1, Landroidx/media2/session/SessionCommand$a;

    const v2, 0xc350

    const v4, 0xc356

    invoke-direct {v1, v2, v4}, Landroidx/media2/session/SessionCommand$a;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput p1, p0, Landroidx/media2/session/SessionCommand;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media2/session/SessionCommand;->b:Ljava/lang/String;

    iput-object p1, p0, Landroidx/media2/session/SessionCommand;->c:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Landroidx/media2/session/SessionCommand;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/media2/session/SessionCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/media2/session/SessionCommand;

    iget v0, p0, Landroidx/media2/session/SessionCommand;->a:I

    iget v2, p1, Landroidx/media2/session/SessionCommand;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media2/session/SessionCommand;->b:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media2/session/SessionCommand;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/session/SessionCommand;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/SessionCommand;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lja;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
