.class public Ln91$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ln91$a;

.field public b:Z

.field public c:Lq71$a;

.field public d:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lq71$e;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ln91$a;->b:Ln91$a;

    iput-object v0, p0, Ln91$b;->a:Ln91$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln91$b;->b:Z

    sget-object v0, Lq71$a;->c:Lq71$a;

    iput-object v0, p0, Ln91$b;->c:Lq71$a;

    const/4 v0, 0x0

    iput-object v0, p0, Ln91$b;->d:Ljava/lang/String;

    iput-object v0, p0, Ln91$b;->f:Ljava/lang/String;

    iput-object v0, p0, Ln91$b;->g:Ljava/lang/Integer;

    const-class v0, Lq71$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Ln91$b;->h:Ljava/util/EnumSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln91$b;->j:Z

    return-void
.end method

.method public constructor <init>(Ln91$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ln91$a;->b:Ln91$a;

    iput-object v0, p0, Ln91$b;->a:Ln91$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln91$b;->b:Z

    sget-object v0, Lq71$a;->c:Lq71$a;

    iput-object v0, p0, Ln91$b;->c:Lq71$a;

    const/4 v0, 0x0

    iput-object v0, p0, Ln91$b;->d:Ljava/lang/String;

    iput-object v0, p0, Ln91$b;->f:Ljava/lang/String;

    iput-object v0, p0, Ln91$b;->g:Ljava/lang/Integer;

    const-class v0, Lq71$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Ln91$b;->h:Ljava/util/EnumSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln91$b;->j:Z

    iget-object v0, p1, Ln91$b;->a:Ln91$a;

    iput-object v0, p0, Ln91$b;->a:Ln91$a;

    iget-boolean v0, p1, Ln91$b;->b:Z

    iput-boolean v0, p0, Ln91$b;->b:Z

    iget-object v0, p1, Ln91$b;->c:Lq71$a;

    iput-object v0, p0, Ln91$b;->c:Lq71$a;

    iget-object v0, p1, Ln91$b;->d:Ljava/lang/String;

    iput-object v0, p0, Ln91$b;->d:Ljava/lang/String;

    iget-object v0, p1, Ln91$b;->f:Ljava/lang/String;

    iput-object v0, p0, Ln91$b;->f:Ljava/lang/String;

    iget-object v0, p1, Ln91$b;->g:Ljava/lang/Integer;

    iput-object v0, p0, Ln91$b;->g:Ljava/lang/Integer;

    iget-object v0, p1, Ln91$b;->h:Ljava/util/EnumSet;

    iput-object v0, p0, Ln91$b;->h:Ljava/util/EnumSet;

    iget-boolean p1, p1, Ln91$b;->j:Z

    iput-boolean p1, p0, Ln91$b;->j:Z

    return-void
.end method

.method public static synthetic a(Ln91$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Ln91$b;->j:Z

    return p1
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ln91$b;->j:Z

    return v0
.end method
