.class final Lcom/criteo/publisher/model/s$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/model/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/criteo/publisher/model/b0/n;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/model/s;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/model/s;)V
    .locals 0

    iput-object p1, p0, Lcom/criteo/publisher/model/s$b;->a:Lcom/criteo/publisher/model/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Double;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/model/s$b;->a:Lcom/criteo/publisher/model/s;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/h/p;->d(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/criteo/publisher/model/s$b;->a()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
