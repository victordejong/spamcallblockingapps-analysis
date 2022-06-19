.class public final Le41;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/net/URL;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le41;->a:Ljava/lang/String;

    iput-object p2, p0, Le41;->b:Ljava/net/URL;

    iput-object p3, p0, Le41;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Le41;
    .locals 1

    const-string v0, "VendorKey is null or empty"

    invoke-static {p0, v0}, Lb51;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResourceURL is null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationParameters is null or empty"

    invoke-static {p2, v0}, Lb51;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le41;

    invoke-direct {v0, p0, p1, p2}, Le41;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/net/URL;)Le41;
    .locals 2

    const-string v0, "ResourceURL is null"

    invoke-static {p0, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le41;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Le41;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Le41;->b:Ljava/net/URL;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le41;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le41;->c:Ljava/lang/String;

    return-object v0
.end method
