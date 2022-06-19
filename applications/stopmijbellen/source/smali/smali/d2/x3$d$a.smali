.class public Ld2/x3$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/x3$d;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/x3$d;


# direct methods
.method public constructor <init>(Ld2/x3$d;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/x3$d$a;->b:Ld2/x3$d;

    iput-object p2, p0, Ld2/x3$d$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/x3$d$a;->b:Ld2/x3$d;

    iget-object v0, v0, Ld2/x3$d;->a:Ld2/x3;

    iget-object v1, p0, Ld2/x3$d$a;->a:Ld2/t0;

    .line 2
    iget-object v1, v1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "custom_js"

    .line 3
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ld2/x3;->r(Ljava/lang/String;)V

    return-void
.end method
