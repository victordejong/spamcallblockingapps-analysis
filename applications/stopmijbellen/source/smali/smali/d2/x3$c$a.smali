.class public Ld2/x3$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/x3$c;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/x3$c;


# direct methods
.method public constructor <init>(Ld2/x3$c;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/x3$c$a;->b:Ld2/x3$c;

    iput-object p2, p0, Ld2/x3$c$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/x3$c$a;->b:Ld2/x3$c;

    iget-object v0, v0, Ld2/x3$c;->a:Ld2/x3;

    iget-object v1, p0, Ld2/x3$c$a;->a:Ld2/t0;

    invoke-virtual {v0, v1}, Ld2/x3;->i(Ld2/t0;)V

    return-void
.end method
