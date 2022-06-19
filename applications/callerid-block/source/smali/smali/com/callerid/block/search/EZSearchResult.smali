.class public Lcom/callerid/block/search/EZSearchResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callerid/block/search/EZSearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Report_count:I

.field private address:Ljava/lang/String;

.field private block_times:Ljava/lang/String;

.field private complaint_times:Ljava/lang/String;

.field private date:J

.field private email:Ljava/lang/String;

.field private faild_error_log:I

.field private format_tel_number:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private isContact:Z

.field private isSpam:Z

.field private location:Ljava/lang/String;

.field private max_report:I

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private old_tel_number:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private raw_contact_id:I

.field private soft_comments:Ljava/lang/String;

.field private t_p:Ljava/lang/String;

.field private tag_main:Ljava/lang/String;

.field private tag_sub:Ljava/lang/String;

.field private tel_number:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private type_label:Ljava/lang/String;

.field private website:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callerid/block/search/EZSearchResult$a;

    invoke-direct {v0}, Lcom/callerid/block/search/EZSearchResult$a;-><init>()V

    sput-object v0, Lcom/callerid/block/search/EZSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->location:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->email:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/callerid/block/search/EZSearchResult;->isContact:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->icon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->website:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callerid/block/search/EZSearchResult;->Report_count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->type_label:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/callerid/block/search/EZSearchResult;->date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->tel_number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callerid/block/search/EZSearchResult;->max_report:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/callerid/block/search/EZSearchResult;->isSpam:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->block_times:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->tag_main:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->operator:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->t_p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callerid/block/search/EZSearchResult;->faild_error_log:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/callerid/block/search/EZSearchResult;->raw_contact_id:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBlock_times()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->block_times:Ljava/lang/String;

    return-object v0
.end method

.method public getComplaint_times()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/search/EZSearchResult;->date:J

    return-wide v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFaild_error_log()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/search/EZSearchResult;->faild_error_log:I

    return v0
.end method

.method public getFormat_tel_number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMax_report()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/search/EZSearchResult;->max_report:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getOld_tel_number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw_contact_id()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/search/EZSearchResult;->raw_contact_id:I

    return v0
.end method

.method public getReport_count()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/search/EZSearchResult;->Report_count:I

    return v0
.end method

.method public getSoft_comments()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    return-object v0
.end method

.method public getT_p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->t_p:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_main()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->tag_main:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_sub()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    return-object v0
.end method

.method public getTel_number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getType_label()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->type_label:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/search/EZSearchResult;->website:Ljava/lang/String;

    return-object v0
.end method

.method public isContact()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/search/EZSearchResult;->isContact:Z

    return v0
.end method

.method public isSpam()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/search/EZSearchResult;->isSpam:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->address:Ljava/lang/String;

    return-void
.end method

.method public setBlock_times(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->block_times:Ljava/lang/String;

    return-void
.end method

.method public setComplaint_times(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    return-void
.end method

.method public setContact(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/search/EZSearchResult;->isContact:Z

    return-void
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/search/EZSearchResult;->date:J

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->email:Ljava/lang/String;

    return-void
.end method

.method public setFaild_error_log(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/search/EZSearchResult;->faild_error_log:I

    return-void
.end method

.method public setFormat_tel_number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIsSpam(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/search/EZSearchResult;->isSpam:Z

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->location:Ljava/lang/String;

    return-void
.end method

.method public setMax_report(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/search/EZSearchResult;->max_report:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->number:Ljava/lang/String;

    return-void
.end method

.method public setOld_tel_number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->operator:Ljava/lang/String;

    return-void
.end method

.method public setRaw_contact_id(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/search/EZSearchResult;->raw_contact_id:I

    return-void
.end method

.method public setReport_count(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/search/EZSearchResult;->Report_count:I

    return-void
.end method

.method public setSoft_comments(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    return-void
.end method

.method public setSpam(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/search/EZSearchResult;->isSpam:Z

    return-void
.end method

.method public setT_p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->t_p:Ljava/lang/String;

    return-void
.end method

.method public setTag_main(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->tag_main:Ljava/lang/String;

    return-void
.end method

.method public setTag_sub(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    return-void
.end method

.method public setTel_number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->tel_number:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->type:Ljava/lang/String;

    return-void
.end method

.method public setType_label(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->type_label:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/search/EZSearchResult;->website:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EZSearchResult{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/search/EZSearchResult;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", location=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isContact="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callerid/block/search/EZSearchResult;->isContact:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", website=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->website:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", Report_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callerid/block/search/EZSearchResult;->Report_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type_label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->type_label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callerid/block/search/EZSearchResult;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", old_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", format_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", max_report="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callerid/block/search/EZSearchResult;->max_report:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSpam="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callerid/block/search/EZSearchResult;->isSpam:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", block_times=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->block_times:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", complaint_times=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag_main=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->tag_main:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag_sub=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", soft_comments=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", operator=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->operator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", t_p=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/search/EZSearchResult;->t_p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", faild_error_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callerid/block/search/EZSearchResult;->faild_error_log:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", raw_contact_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callerid/block/search/EZSearchResult;->raw_contact_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->location:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/callerid/block/search/EZSearchResult;->isContact:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->website:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/callerid/block/search/EZSearchResult;->Report_count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->type_label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/callerid/block/search/EZSearchResult;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->tel_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/callerid/block/search/EZSearchResult;->max_report:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/callerid/block/search/EZSearchResult;->isSpam:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->block_times:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->tag_main:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->operator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/search/EZSearchResult;->t_p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/callerid/block/search/EZSearchResult;->faild_error_log:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/callerid/block/search/EZSearchResult;->raw_contact_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
