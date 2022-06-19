.class public Ld2/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/b;->d(Ld2/k;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/k;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld2/k;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b$c;->a:Ld2/k;

    iput-object p2, p0, Ld2/b$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/b$c;->a:Ld2/k;

    iget-object v1, p0, Ld2/b$c;->b:Ljava/lang/String;

    invoke-static {v1}, Ld2/b;->a(Ljava/lang/String;)Ld2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld2/k;->f(Ld2/s;)V

    return-void
.end method
