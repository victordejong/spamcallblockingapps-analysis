.class public Ln7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/a;->c(Ln7/h;ILn7/a$d;Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/h;

.field public final synthetic b:I

.field public final synthetic c:Ln7/a$d;

.field public final synthetic d:Lq7/a;

.field public final synthetic e:Ln7/a;


# direct methods
.method public constructor <init>(Ln7/a;Ln7/h;ILn7/a$d;Lq7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/a$a;->e:Ln7/a;

    iput-object p2, p0, Ln7/a$a;->a:Ln7/h;

    iput p3, p0, Ln7/a$a;->b:I

    iput-object p4, p0, Ln7/a$a;->c:Ln7/a$d;

    iput-object p5, p0, Ln7/a$a;->d:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln7/a$a;->e:Ln7/a;

    iget-object v1, p0, Ln7/a$a;->a:Ln7/h;

    iget v2, p0, Ln7/a$a;->b:I

    iget-object v3, p0, Ln7/a$a;->c:Ln7/a$d;

    iget-object v4, p0, Ln7/a$a;->d:Lq7/a;

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Ln7/a;->d(Ln7/h;ILn7/a$d;Lq7/a;)V

    return-void
.end method
