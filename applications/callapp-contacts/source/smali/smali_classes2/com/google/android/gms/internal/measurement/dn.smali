.class final synthetic Lcom/google/android/gms/internal/measurement/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/dl;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/dp;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/dp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/dn;->a:Lcom/google/android/gms/internal/measurement/dp;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dn;->a:Lcom/google/android/gms/internal/measurement/dp;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/dn;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/dp;->a:Landroid/content/Context;

    .line 1001
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/de;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
