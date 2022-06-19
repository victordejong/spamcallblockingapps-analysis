.class public Lcf$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lre;

.field public final b:Lme$a;

.field public c:Z


# direct methods
.method public constructor <init>(Lre;Lme$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcf$a;->c:Z

    iput-object p1, p0, Lcf$a;->a:Lre;

    iput-object p2, p0, Lcf$a;->b:Lme$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcf$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcf$a;->a:Lre;

    iget-object v1, p0, Lcf$a;->b:Lme$a;

    invoke-virtual {v0, v1}, Lre;->i(Lme$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcf$a;->c:Z

    :cond_0
    return-void
.end method
