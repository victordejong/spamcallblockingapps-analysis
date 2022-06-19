.class public final Ltl1$b;
.super Lrk1;
.source ""

# interfaces
.implements Ljk1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltl1;->u(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lbl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrk1;",
        "Ljk1<",
        "Lwk1;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Ltl1$b;->b:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrk1;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lwk1;

    invoke-virtual {p0, p1}, Ltl1$b;->c(Lwk1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lwk1;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltl1$b;->b:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ltl1;->w(Ljava/lang/CharSequence;Lwk1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
