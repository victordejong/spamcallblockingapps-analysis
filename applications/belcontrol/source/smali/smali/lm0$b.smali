.class public final Llm0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llm0;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llm0$c;


# direct methods
.method public constructor <init>(Llm0$c;)V
    .locals 0

    iput-object p1, p0, Llm0$b;->a:Llm0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Llm0$b;->a:Llm0$c;

    invoke-interface {v0}, Llm0$c;->a()V

    return-void
.end method
