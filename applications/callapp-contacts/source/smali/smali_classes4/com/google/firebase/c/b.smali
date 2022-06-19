.class final synthetic Lcom/google/firebase/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/d/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/c/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/c/a;->a(Landroid/content/Context;)Lcom/google/firebase/c/g;

    move-result-object v0

    return-object v0
.end method
