package retrofit2;
/* loaded from: classes5-dex2jar.jar:retrofit2/c.class */
public interface c<T> {
    void onFailure(Call<T> call, Throwable th);

    void onResponse(Call<T> call, Response<T> response);
}
