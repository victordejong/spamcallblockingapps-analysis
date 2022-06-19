.class final synthetic Lcom/google/android/datatransport/h/x/a;
.super Ljava/lang/Object;
.source "DefaultScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/datatransport/h/x/c;

.field private final e:Lcom/google/android/datatransport/h/m;

.field private final f:Lcom/google/android/datatransport/g;

.field private final g:Lcom/google/android/datatransport/h/h;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/h/x/c;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/g;Lcom/google/android/datatransport/h/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/x/a;->d:Lcom/google/android/datatransport/h/x/c;

    iput-object p2, p0, Lcom/google/android/datatransport/h/x/a;->e:Lcom/google/android/datatransport/h/m;

    iput-object p3, p0, Lcom/google/android/datatransport/h/x/a;->f:Lcom/google/android/datatransport/g;

    iput-object p4, p0, Lcom/google/android/datatransport/h/x/a;->g:Lcom/google/android/datatransport/h/h;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/h/x/c;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/g;Lcom/google/android/datatransport/h/h;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/h/x/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/h/x/a;-><init>(Lcom/google/android/datatransport/h/x/c;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/g;Lcom/google/android/datatransport/h/h;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/datatransport/h/x/a;->d:Lcom/google/android/datatransport/h/x/c;

    iget-object v1, p0, Lcom/google/android/datatransport/h/x/a;->e:Lcom/google/android/datatransport/h/m;

    iget-object v2, p0, Lcom/google/android/datatransport/h/x/a;->f:Lcom/google/android/datatransport/g;

    iget-object v3, p0, Lcom/google/android/datatransport/h/x/a;->g:Lcom/google/android/datatransport/h/h;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/h/x/c;->c(Lcom/google/android/datatransport/h/x/c;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/g;Lcom/google/android/datatransport/h/h;)V

    return-void
.end method
